
function printValue(x){
  // code ...
  return x * 2;
};

const cachingDecorator = (fn) => {
  const cache = new Map();

  return function(x) {
    if(cache.has(x)) { 
      console.log('testing cache')
      return cache.get(x) 
    }
    const result = fn(x);
    cache.set(x, result)
    console.log('testing not cache')

    return result;
  };
}

printValue  = cachingDecorator(printValue);

console.log(printValue(2));
console.log(printValue(2));
