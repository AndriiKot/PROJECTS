
const fn1 = async () => {
  console.log("Hello!");
};

const main = async () => {    // !!!  в Node.js await можно писать если есть топ левел эвейт !!!
  const res = await fn1();
  return res;
};

main();


const fn2 = async () => {
  console.log('Hi!!!');
};


/* 

const res2 = await fn2();
console.log(res3);          //  в браузере работает такая запись
*/

const res2 = fn2().then;  
