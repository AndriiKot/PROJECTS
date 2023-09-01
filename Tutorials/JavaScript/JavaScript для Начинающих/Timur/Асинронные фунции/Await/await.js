
const add1 = (a, b) => a + b;
const res1 = add1(2, 3);
console.log(res1);

const add2 = (a, b, callback) => callback(a + b);
const res2 = add2(2, 3, console.log)

const add3 = async (a, b) => {
  return a + b;
};

const res3  = async () => {
 const res = await add3(2, 3);
 console.log(res);
};

res3();

