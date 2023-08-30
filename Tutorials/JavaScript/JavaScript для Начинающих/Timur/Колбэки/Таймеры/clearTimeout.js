
const timer = setTimeout(() => {
  console.log('callback #1');
}, 50);

setTimeout(() => {
  console.log('callback #2');
  clearTimeout(timer);
}, 10);

