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

  return  sumOfAllNumbers / leng;
}

console.log(findAverage([1, 55, 69, 420]))
