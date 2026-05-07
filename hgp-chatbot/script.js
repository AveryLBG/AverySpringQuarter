const chat = document.getElementById("chat");
const form = document.getElementById("form");
const input = document.getElementById("input");


function addMsg(text, who) {
  const div = document.createElement("div");
  div.className = `msg ${who}`;
  div.textContent = text;
  chat.appendChild(div);
  chat.scrollTop = chat.scrollHeight;
}


const rules = [
  { match: ["hello", "hi", "hey"], reply: "Hey! I'm the HGP Help Bot. Ask me about hours, location, or programs." },
  { match: ["hours", "open"], reply: "We're open Mon--Fri, 9am--5pm." },
  { match: ["location", "where"], reply: "We're located at the RYSE center." },
  { match: ["program", "classes"], reply: "We teach leadership + tech skills. Ask: 'What do we learn in BI?'" },
  { match: ["AAI", "Applied Artificial Intelligence"], reply: "AAIis using data to make better decisions. Want a quick example?" },
  { match: ["marshawn"], reply: "OLLLLLLD OLD OLD OLDDDDDDDD" },
  { match: ["andrew"], reply: "why not" },
  { match: ["joseph"], reply: "short" },
  { match: ["taqari",  "nishad"], reply: "he goes to nvictus EWWWWWW" },
  { match: ["devon"], reply: "He da real nutt" },
  { match: ["tay"], reply: "HNAILBAHHJDWTMSILHA" },
  { match: ["not sure yet"], reply: "What are you sure of then? Huh? Huh???? Tell me? Or do you need AI to come up with that too bum chud loser" },
  { match: ["students", "join"], reply: "HGP is available to black male students from 8-11th grade. There are cohorts all across the U.S., and this one was programmed by someone in the cohort 'rich 9'. " },
  { match: ["I am because", "i am because"], reply: "We are." },
  { match: ["qwerty", "emoji"], reply: "👩‍🏫 ⚛ 🎻 🇮🇩 🅾️ 🏊‍♀️ ◀ 🕯️ 👩‍🦱 🔫 👼 🦞 🦿 🚶‍♂️‍➡️ 🇵🇦 🪢 📙 ® 👨‍👩‍👦 🥚 🤸‍♀️ 🏔️ 🦻 🇰🇾 🤛 😮‍💨 🆚 🐐 🚪 💮" },
  { match: ["paris"], reply: `⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⠒⠊⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢠⠁⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⠗⠚⠉⠉⢉⡀⠀⠀⠀⠠⡄⠀⠀⠀⠀⠀⠀⠀⠁⣉⣉⡉⠉⠒⠐⠚⠒⢲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢹⠀⡹⣈⣏⣩⠀⠀⠀⠀⡄⠉⢻⡤⠞⣠⠀⡠⠞⠉⠸⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢸⠊⠁⠤⢥⠈⠁⠀⠀⠞⠉⠉⣙⡏⠉⣇⠈⢇⡀⠀⢸⡀⣀⣠⠄⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⣿⠒⠢⠄⠄⠤⠤⠤⠤⠤⠤⠤⠤⠤⠬⠭⠭⠝⠒⠒⠒⠒⠒⢷⠲⠧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢹⡀⠐⠒⠒⠒⠒⠉⠉⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠁⠈⠉⣶⡕⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⡇⠀⠤⠒⣭⣭⠣⠄⠀⠀⠀⠀⠀⠀⠀⠀⢴⣯⡍⠃⠀⡟⠇⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⡀⢱⠀⠀⠀⠿⠋⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠸⠿⠃⠀⢸⠇⢘⢐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢠⠁⠀⡇⢸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⢀⢯⠀⠈⡮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡌⠀⠀⡅⢸⠘⣆⠀⠀⠀⠀⠀⠀⢀⣀⣘⡆⠀⠀⠀⠀⠀⠀⡜⢸⠀⠀⡇⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡆⠀⢀⠇⣸⠀⡍⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠇⠈⡆⢀⡇⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡇⠀⢸⠀⡇⠀⡇⠀⠹⢷⢄⠉⠉⠉⢉⣳⠒⢒⣠⢴⣾⠟⢰⠀⠀⢹⠋⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡇⠀⡾⠶⠥⠤⠃⠀⠀⠀⠙⠯⢖⣤⣯⣿⣮⡭⠾⠉⠀⠀⠇⠀⢀⡾⠀⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡇⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢀⠇⡇⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢧⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⠁⠀⢱⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀`  }
];


function getReply(text) {
  const t = text.toLowerCase();
  for (const r of rules) {
    if (r.match.some(word => t.includes(word))) return r.reply;
  }
  return "I'm not sure yet --- teach me a new rule!";
}

addMsg("Hello, I'm the HGP AI! Ask me things, or type the name of a gmail", "bot")
form.addEventListener("submit", (e) => {
  e.preventDefault();
  const text = input.value.trim();
  if (!text) return;


  addMsg(text, "user");
  addMsg(getReply(text), "bot");
  input.value = "";
});
