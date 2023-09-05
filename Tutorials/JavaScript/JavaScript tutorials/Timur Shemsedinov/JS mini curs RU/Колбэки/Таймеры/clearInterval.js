
const timer = setInterval(() => {
  console.log('callback #1');
}, 10);

setTimeout(() => {
  console.log('callback #2');
  clearInterval(timer);
}, 50);

