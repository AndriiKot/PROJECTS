
const calculateSubtotal = (gooods) => {
  let amount = 0;
  for(const item of goods) {
    if (item.price < 0) throw 'Negative price';
  }
  return amount
};

