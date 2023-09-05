
const sum = (a = 0, b = 0) => {
  return a + b;
};

const sum1 = (a, b) => {
  a = a || 0;
  b = b || 0;
  return a + b;
}

console.log(sum(5, 2));
console.log(sum(5));
console.log(sum());

console.log(sum1(5, 5));
console.log(sum1(7));
console.log(sum1());