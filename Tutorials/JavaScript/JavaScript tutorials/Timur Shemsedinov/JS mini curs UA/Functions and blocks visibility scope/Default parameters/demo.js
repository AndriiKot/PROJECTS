'use strict'

console.log(addNumbers(2,3));


function addNumbers(a = 0,b = 0) {
  return a + b
}

const add2 = function(a = 0,b = 0) {
  return a + b
};

console.log(add2(3,3));
console.log(addNumbers(2,3));

console.log(add2());
console.log(addNumbers());
