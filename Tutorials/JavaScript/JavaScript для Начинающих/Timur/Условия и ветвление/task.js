
let item1;
let item2;
let item3;

item1 = 2;
item2 = -3;

function validationValue(item) {
  if (item < 0) throw 'Negative price';
  return item;
}

try {
  console.log(validationValue(item1));
  console.log(validationValue(item2)); 
} catch (e) {
  console.error(e)
}
