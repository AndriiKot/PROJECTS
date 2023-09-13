
function plus(a, b) {
  console.log(a + b);
}

const plus_two = plus.bind(null, 2);

plus_two(10)
plus_two(5)
