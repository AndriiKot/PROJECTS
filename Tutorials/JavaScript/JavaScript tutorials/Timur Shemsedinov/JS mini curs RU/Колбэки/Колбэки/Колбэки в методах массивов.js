
const stock = [
  { name: 'Laptop', quantity: 15 },
  { name: 'Keyboard', quantity: 0 },
  { name: 'Mouse', quantity: 10 },
];

const inStock = (item) => item.quantity > 0;
const available = stock.filter(inStock);

console.log(available);

