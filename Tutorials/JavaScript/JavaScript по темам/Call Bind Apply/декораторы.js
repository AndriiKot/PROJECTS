
function printValue(x){
  // code ...
  return x * 2;
};

const cachingDecorator = (fn) => {
  const cache = new Map();

  return function(x) {
    if(cache.has(x)) { return cache.get(x) }
    const result = fn(x);
    cache.set(x, result)

    return result;
  };
}

printValue  = cachingDecorator(printValue);

console.log(printValue(2));
