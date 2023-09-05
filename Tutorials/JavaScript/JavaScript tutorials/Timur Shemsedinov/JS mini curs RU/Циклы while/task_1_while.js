
const sum = (...args) => {
  let value = 0;
  while (args.length > 0) {
    value += args.pop();
  }
  return value;
}

console.log(sum(3,4))
console.log(sum(5,5,3))
console.log(sum(22,44,11))

