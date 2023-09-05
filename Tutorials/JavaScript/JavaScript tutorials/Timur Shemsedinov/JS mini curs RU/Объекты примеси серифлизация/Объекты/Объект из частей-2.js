
const basket = {
  Laptop: 1500,
  Keyboard: 100,
  Mouse: 25,
};

const order = { HDMI: 10, Mouse: 20, ...basket };
console.log(order);

