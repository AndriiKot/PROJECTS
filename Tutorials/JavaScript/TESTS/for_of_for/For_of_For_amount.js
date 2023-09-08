
const array = [11, 22, 33, 44, 55, 66]

let n = 1_000_000_000;

const for_ = (array) => {
  console.dir(array);
  let amount = 0;
  console.time();

    for(let i = 0; i < n; i++) {
      const len = array.length; 
      for(let i = 0; i < len; i++) {       // for работает быстрея и в браузере и в Node.js
        amount += array[i]
      }
    }

  console.timeEnd();  
};

const for_of = (array) => {
  console.dir(array);
  let amount = 0;
  console.time();

    for(let i = 0; i < n; i++) {
      for(const item of array) {  amount += item }
    }
  console.timeEnd();  
};




for_(array)
for_of(array)