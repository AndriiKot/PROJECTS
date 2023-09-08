

const fn1 = (a = 0, b = 0) => {};
const fn2 = (...args) => { args[0] = args[0] || 0; args[1] = args[1] || 0 }   // ??? Работает очень медленно и в браузере и в Node.js

let n = 1_000_000_000;

const test = (fn,n) => {
  console.dir(fn);

  console.time();

    for(let i = 0; i < n; i++) { fn() }

  console.timeEnd();  
};

test(fn1,n)
test(fn2,n)

