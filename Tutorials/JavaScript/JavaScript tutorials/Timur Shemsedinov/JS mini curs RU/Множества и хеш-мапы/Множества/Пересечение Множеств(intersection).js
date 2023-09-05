
const order = new Set(['Laptop', 'Keyboard', 'Mouse' ]);
const stock = new Set(['Bag', 'Keyboard']);


const basket = new Set(
  [...order].filter((item) => stock.has(item))
);

console.log(basket);