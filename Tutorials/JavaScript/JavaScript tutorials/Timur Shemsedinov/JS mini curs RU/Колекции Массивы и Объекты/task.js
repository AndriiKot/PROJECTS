
const purchase = {
  Electronics: [
    { name: 'Laptop', price: 1500 },
    { name: 'Keyboard', price: 100 },
    { name: 'IDMI cable', price: 10 },
  ],
  Textile: [
    { name: 'Bag', price: 50 },
  ],
};

// 1
console.log('\ntask 1\n');

console.log(purchase['Electronics']);
console.log(purchase.Electronics);

// 2
console.log('\ntask 2\n');

console.log(purchase.Electronics[0]);
console.log(purchase['Electronics'][0]);

// 3
console.log('\ntask 3\n');

console.log(purchase.Electronics.length);
console.log(purchase.Textile.length);

// 4
console.log('\ntask 4\n');

console.log(Object.keys(purchase));

// 5
console.log('\ntask 5\n');


console.log(Object.entries(purchase));
console.dir(Object.entries(purchase));

// 6
console.log('\ntask 6\n');

console.log(purchase.Electronics[8]);

// 7
console.log('\ntask 7\n');


console.log(purchase.Electronics.at(-1))

// 8
console.log('\ntask 8\n');

const items = [...purchase.Electronics];
console.log(purchase.Electronics);

// 9
console.log('\ntask 9\n');

console.log([
  ...purchase.Electronics,
  ...purchase.Textile,
]);

// 10
console.log('\ntask 10\n');

purchase.Electronics.push({ name: 'Mounse', price: 25});
console.log(purchase.Electronics);

// 11
console.log('\ntask 11\n');

const item = purchase.Electronics.pop();
console.log(item);
console.log(purchase.Electronics);





























