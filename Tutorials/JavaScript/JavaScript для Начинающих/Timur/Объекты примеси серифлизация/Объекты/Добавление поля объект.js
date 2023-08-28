
const basket = {
  Laptop: 1500,
  Keyboard: 100,
  HDMI: 10,
};

basket['Mouse'] = 25;
console.log(basket);

// or

const key = 'Mouse';
basket[key] = 30;
console.log(basket);

delete basket['Keyboard']; // or delete basket.keyboard;
console.log(basket);