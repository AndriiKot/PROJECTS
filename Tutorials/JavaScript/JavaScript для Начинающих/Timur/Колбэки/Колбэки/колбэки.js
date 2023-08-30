
const add = (a, b, callback) => callback(a + b);

const res = add(2, 3, (res) => {
  console.log(res);
});