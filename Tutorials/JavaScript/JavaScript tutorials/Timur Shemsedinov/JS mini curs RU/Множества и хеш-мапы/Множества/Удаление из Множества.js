
const goods = ['Laptop', 'Keyboard', 'Mouse'];

const basket = new Set(goods);

basket.delete('Bag');
basket.delete('Mouse');

console.log(basket);