
const goods = new Set(['Laptop', 'Keyboard', 'Mouse' ]);

const added = new Set(['Bag', 'Keyboard']);

const basket = new Set([ ...goods, ...added]);

console.log(basket);