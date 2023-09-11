const values = {
	name: 'Mouse',
	price: 25,
	stock: false,
	avg: (a, b) => (a + b) / 2n,
	reference: null,
	primitive: undefined,
	numbers: [NaN, Infinity],
}

for(const item in values) {
  console.log(`${item}: ${values[item]}`)
}

for(const item in values) {
  console.log(`${typeof(values[item])}: ${values[item]}`)
}

