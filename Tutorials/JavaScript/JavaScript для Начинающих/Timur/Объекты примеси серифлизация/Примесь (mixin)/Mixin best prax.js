
const basket = { Laptop: 1500, Keyboard: 100 };

const goodsTotal = (goods) => {
  return  { goods, total: calculateTotal(goods),};
};

const calculateTotal = (obj) => {
  let total = 0;
  for (const key in obj) {
    total += obj[key];
  }
  return total;
};

const order = goodsTotal(basket);
console.log(basket);
console.log(order);

