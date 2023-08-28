
const goods = ['Laptop', 'Keyboard', 'Mouse'];

const basket = new Set(goods);

basket.add('Bag');
basket.add('Mouse');

console.log(basket);