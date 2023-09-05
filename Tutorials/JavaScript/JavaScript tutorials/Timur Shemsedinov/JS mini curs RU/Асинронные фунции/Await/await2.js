const add = async (a, b) => {
  return a + b;
};


const main = async () => {
  const res = await add(2, 3);
  console.log(res);
};

main();

