// --- DOM hooks (adjust ids if yours differ) ---
const form = document.querySelector("form");
const input = document.querySelector("#input");
const chat = document.querySelector("#chat");
const quickButtons = document.querySelectorAll("button[data-prompt]");

// --- helper to add a chat bubble; returns the created element ---
function addMsg(text, who = "bot") {
  const el = document.createElement("div");
  el.className = `msg ${who}`; // e.g., "msg user" / "msg bot"
  el.textContent = text;
  chat.appendChild(el);
  chat.scrollTop = chat.scrollHeight;
  return el;
}

// --- call server ---
async function getAIReply(text) {
  const res = await fetch("/api/chat", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ message: text }),
  });

  const data = await res.json().catch(() => ({}));

  if (!res.ok) {
    const msg = data?.reply || `Request failed (${res.status})`;
    throw new Error(msg);
  }

  return data?.reply ?? "No reply returned.";
}

// --- wire up submit ---
form?.addEventListener("submit", async (e) => {
  e.preventDefault();
  const text = input.value.trim();
  if (!text) return;
  await sendMessage(text);
});

// --- send message ---
async function sendMessage(text) {
  if (!text) return;
  addMsg(text, "user");
  const thinkingEl = addMsg("Thinking...", "bot");

  input.value = "";
  input.disabled = true;

  try {
    const reply = await getAIReply(text);
    thinkingEl.textContent = reply;
  } catch (err) {
    thinkingEl.textContent = err?.message || "Something went wrong.";
    console.error(err);
  } finally {
    input.disabled = false;
    input.focus();
    chat.scrollTop = chat.scrollHeight;
  }
}

// --- quick buttons ---
quickButtons.forEach((button) => {
  button.type = "button";
  button.addEventListener("click", async () => {
    const prompt = button.dataset.prompt?.trim();
    if (!prompt) return;
    await sendMessage(prompt);
  });
});

