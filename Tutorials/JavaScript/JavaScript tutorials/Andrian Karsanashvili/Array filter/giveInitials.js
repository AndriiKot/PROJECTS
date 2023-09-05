'use strict'

function giveInitials(fullName) {
  const splitName = fullName.split(' ') ;

   return `${splitName[0][0]}. ${splitName[1][0]}.`;
}

function makeUpperCase(str) {
  return str.toUpperCase()
}

function findAverage(arr) {
  let sumOfAllNumbers = 0;
  const leng = arr.length;

  for(let i = 0; i < leng; i++) {
    sumOfAllNumbers += arr[i];
  }

  return  Math.round(sumOfAllNumbers / leng);
}

// 5 => [5, 4, 3, 2, 1]

function giveArrayFromNumber(num) {
  const res = new Array(num);

  for (let i = 0; i < num; i++) {
     let n = num - i;
     res[i] = n;
  }
  return res;
}

function giveArrayFromNumberWithPush(num) {
  const res = [];

  for (let i = num; i > 0; i--) {
    res.push(i);
  }
  return res;
}

console.log(giveArrayFromNumber(5));
console.log(giveArrayFromNumberWithPush(5));
































