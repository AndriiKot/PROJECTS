

const fn1 = (a = 0, b = 0) => {};
function fn2(a = 0, b = 0) {};
function fn3(a = 0, b = 0){}

let n = 1_000_000_000;

const test = (fn,n) => {
  console.dir(fn);

  console.time();

    for(let i = 0; i < n; i++) { fn() }

  console.timeEnd();  
};

test(fn1,n)
test(fn2,n)
test(fn3,n)


