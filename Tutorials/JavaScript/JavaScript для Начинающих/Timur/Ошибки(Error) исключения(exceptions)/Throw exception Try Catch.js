
const calculateTotal = (order) => {
  throw 'Always throw';
};

try {
  const prices = [1500, 100, 20];
  console.log(calculateTotal(prices));
} catch (err) {
  console.error(err);
}


