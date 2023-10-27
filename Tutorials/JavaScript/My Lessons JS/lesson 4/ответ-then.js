
const fn1 = async () => {
  console.log("Hello!");
};



const fn2 = async () => {
  console.log('Hi!!!');
};


fn1().then((res) => {
  console.log(res);
});

fn2().then((res) => {
  console.log(res);
});