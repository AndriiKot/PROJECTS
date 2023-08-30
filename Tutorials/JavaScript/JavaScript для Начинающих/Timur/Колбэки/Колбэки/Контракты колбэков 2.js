
const add = (a, b, callback) => {
  if (!Number.isFinite(a) || !Number.isFinite(b)) {
    callback(new Error('Invalid arguments'));
    return;
  }
  callback(null, a + b);
};

const res = add(Infinity, 3, (error, result) => {
  if (error) console.error(error);
    console.log({ result });
});

const res2 = add('dt','pp', (error, result) => {
  if (error) console.error(error);
    console.log({ result });
});