'use strict';

const calculateTotal = (prices) => {
  let amount = 0;
  if (!Array.isArray(prices)) throw 'Array expected';
  for (const price of prices) {
    amount += price;
  }
  return amount;
};


