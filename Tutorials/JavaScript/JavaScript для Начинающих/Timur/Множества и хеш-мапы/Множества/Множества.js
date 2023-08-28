
const goods = ['Laptop', 'Kyeboard','Mouse'];

const basket = new Set(goods);

for (const name of goods) {
  console.log(`Element: ${name}`);
}

console.log(basket);