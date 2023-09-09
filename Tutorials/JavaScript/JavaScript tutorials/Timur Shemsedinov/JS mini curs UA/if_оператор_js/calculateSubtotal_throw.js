
const calculateSubtotal = (gooods) => {
  let amount = 0;
  for(const item of goods) {
    if (item.price < 0) throw 'Negative price';
  }
  return amount;
};


const calculateSubtotal_Variatin2 = (gooods) => {
  let amount = 0;
  for(const item of goods) {
    if (item.price < 0) {
      throw 'Negative price';
    }
  }
  return amount;
};

