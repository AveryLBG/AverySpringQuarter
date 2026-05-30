import express from "express";
import dotenv from "dotenv";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

dotenv.config({ path: path.join(__dirname, ".env") });

const app = express();

app.use(express.json());
app.use(express.static(path.join(__dirname, ".")));

function extractText(data) {
  if (!data) return "";

  if (typeof data.output_text === "string" && data.output_text.trim()) {
    return data.output_text.trim();
  }

  const parts = [];
  for (const item of data?.output ?? []) {
    for (const c of item?.content ?? []) {
      if (typeof c.text === "string") parts.push(c.text);
    }
  }

  return parts.join(" ").trim();
}

app.post("/api/chat", async (req, res) => {
  try {
    const apiKey = process.env.OPENAI_API_KEY;
    if (!apiKey) {
      console.error("OPENAI_API_KEY missing");
      return res.status(500).json({ reply: "Server configuration error." });
    }

    const userMessage = String(req.body?.message || "");
    const mode = String(req.body?.mode || "friendly");

    const system =
      mode === "coach"
        ? "You are a hype coach. Short, motivating, actionable."
        : mode === "analyst"
        ? "You are an analyst. Give patterns + next steps."
        : "You are friendly and helpful. Keep it brief and safe.";

    const resp = await fetch("https://api.openai.com/v1/responses", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${apiKey}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        model: "gpt-5",
        input: [
          { role: "system", content: system },
          { role: "user", content: userMessage },
        ],
      }),
    });

    const data = await resp.json();

    if (!resp.ok) {
      console.error("OpenAI API error:", data);
      const msg = data?.error?.message || `OpenAI API error (${resp.status})`;
      return res.status(resp.status).json({ reply: msg });
    }

    const replyText = extractText(data) || "I couldn't generate a response right now.";
    res.json({ reply: replyText });
  } catch (err) {
    console.error("Server error:", err);
    res.status(500).json({ reply: "Server error. Try again." });
  }
});

app.listen(process.env.PORT || 3000, () => {
  console.log("Server running on http://localhost:3000");
});


