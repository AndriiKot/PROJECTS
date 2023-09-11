
function my_fn1(number) {
  let result = number / 10
  if (typeof(number) === 'number') {
    console.log(result);
  } else {
    throw { message: 'Ввели не число!'}
  }
}

try {
   my_fn1('fdsa')

} catch (err) {
  console.log(err);
} 

console.log("Hello!!!")