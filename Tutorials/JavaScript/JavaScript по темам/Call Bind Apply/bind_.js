
function plus(a, b) {
  console.log(a + b);
}

const plus_two = plus.bind(null, 2);
const plus_five = plus.bind(null, 5);

plus_two(10);
plus_two(5);

plus_five(4);
plus_five(3);
