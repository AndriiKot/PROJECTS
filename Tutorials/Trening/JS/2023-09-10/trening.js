
const values = {
	name: 'Mouse',
	price: 25,
	stock: false,
	avg: (a, b) => (a + b) / 2n,
	reference: null,
	primitive: undefined,
	numbers: [NaN, Infinity],
};


console.time();
for(const item in values) { console.log(values[item]) };
for(const item in values) { console.log(typeof(values[item])) };

for(const item in values) { const var1 = values[item]; console.log(`${var1}:  ${typeof(var1)}`) };
console.timeEnd();

const array1 = [11, 22, 33, 44, 55, 66, 77]

for(const item of array1) { console.log(item) }
