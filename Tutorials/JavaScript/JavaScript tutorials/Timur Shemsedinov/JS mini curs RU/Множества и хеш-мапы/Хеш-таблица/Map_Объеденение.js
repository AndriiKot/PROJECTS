
const electronics = new Map();
electronics.set('Laptop', 1500);
electronics.set('Keyboard', 100);

const textile = new Map();
textile.set('Bag', 50);

const goods = new Map([...electronics, ...textile]);

console.log(goods);
