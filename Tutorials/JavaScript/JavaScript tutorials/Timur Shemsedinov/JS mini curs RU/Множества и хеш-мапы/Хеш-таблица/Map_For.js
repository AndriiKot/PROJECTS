
const goods = new Map();

goods.set('Laptop', 1500);
goods.set('Keyboard', 100);

for (const [key, value] of goods) {
  console.log(`Price of ${key} is ${value}`);
}