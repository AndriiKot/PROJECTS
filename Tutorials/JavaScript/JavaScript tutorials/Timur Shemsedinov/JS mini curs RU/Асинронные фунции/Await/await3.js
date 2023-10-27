
const add = async (a, b) => {
  return a + b;
};



const main = async () => {
  const res = await add(3,4);
  console.log(res);
};

main();

add(4,5).then((res) => {
  console.log(res);
});


const main2 = async (a, b) => {
   const res = await add(a,b);
   console.log(res);
};

const main3 = async (a, b, fn) => {
  const res = await fn(a,b);
  console.log(res);
};

main2(8,8);

main3(13, 5, add);


       