
const basket = { Laptop: 1500, Keyboard: 100 };

const mixTotal = (obj) => {
  obj.total = calculateTotal(obj);
};

const calculateTotal = (obj) => {
  let total = 0;
  for (const key in obj) {
    total += obj[key];
  }
  return total;
};

mixTotal(basket);
console.log(basket);

