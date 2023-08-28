
const basket = {
  Laptop: 1500,
  Keyboard: 100,
  Mouse: 25,
};

const order = { ...basket, HDMI: 10, Mouse: 20 };
console.log(order);

