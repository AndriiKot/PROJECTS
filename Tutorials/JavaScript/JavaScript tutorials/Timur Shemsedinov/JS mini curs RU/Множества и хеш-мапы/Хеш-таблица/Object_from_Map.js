

const goods = new Map();

goods.set('Laptop', 1500);
goods.set('Keyboard', 100);

const electronics = Object.fromEntries(goods);
console.log(electronics);