
const basket = { Laptop: 1500, Keyboard: 100 };

const addTotal = (obj) => {
  return  { ...obj, total: calculateTotal(obj) };
};

const calculateTotal = (obj) => {
  let total = 0;
  for (const key in obj) {
    total += obj[key];
  }
  return total;
};

const order = addTotal(basket);
console.log(basket);
console.log(order);

