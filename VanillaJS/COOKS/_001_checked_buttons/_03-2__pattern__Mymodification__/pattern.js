﻿const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

for (const item of menu) {
  const btn = document.createElement("button");
  btn.textContent = item;
  document.body.append(btn);

  btn.addEventListener("click", (event) => {
    const el = event.currentTarget; // or event.target
    if (activeBtn !== el) {
      el.classList.add("active");
      if (activeBtn) {
        activeBtn.classList.remove("active"); // delete the old active button
      }
      activeBtn = el;
    }
  });
}
