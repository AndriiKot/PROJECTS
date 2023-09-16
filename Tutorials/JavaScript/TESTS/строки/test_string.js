
const n = 1_000_000_000;

const test_plus = (n) => {

const string_1 = 'string 1'
const string_2 = 'string 2'

  console.time();
    for(let i = 0; i < n; i++) { string_1 + string_2 }
  console.timeEnd();  
};



const test_2 = (n) => {

const string_1 = 'string 1'
const string_2 = 'string 2'

  console.time();
    for(let i = 0; i < n; i++) { `${string_1}${string_2}` }
  console.timeEnd();  
};



console.log('str1 + string: ')
console.log(test_plus(n))

console.log('${str3} ${str4}: ')
console.log(test_2(n))


