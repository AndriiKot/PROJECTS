

function my_fn1(number) {
  let result = number / 10
  if (typeof(number) === 'number' && number !== 0) {
    console.log(result);
  } else {
    throw { message: 'Ввели не число!\nИли ноль!'}
  }
  return result;
}

let res;
try {
  res = 10
  res = my_fn1('sgtin')
  console.log('Hello!')
} catch (err) {
  console.log(err.message);
} finally {
  res =  0
} 

console.log("Bye!!!");
console.log(res);