
function add(x) {
  function closure(y) {
     const z = x + y;
     console.log(`${x} + ${y} = ${z}`);
     return z
  }
  return closure;
}

const result = add(3)(5);
console.log(result);
  