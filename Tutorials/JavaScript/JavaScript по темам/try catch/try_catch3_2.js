
function my_fn1(number) {
  let result = number / 10
  if (typeof(number) === 'number') {
    console.log(result);
  } else {
    throw { message: 'Ввели не число!'}
  }
}

try {
  my_fn1('string')
  console.log('Hello!')
} catch (err) {
  console.log(err.message);
} 

console.log("Bye!!!")