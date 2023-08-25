  const basket = {
    Laptop: 1500,
    Mouse: 25,
    Keyboard: 100,
    HDMI: 10,
  };

  for (const key in basket) {
    const price = basket[key];
    console.log(`Price of ${key} is ${price}`);
  }

  // В Сисетмном коде цикл for..in практически не используется
  // так как он считается достаточно опасным