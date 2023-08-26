
  const electronics = {
    Laptop: 1500,
    Mouse: 25,
    Keyboard: 100,
    HDMI: 10,
  };

  for (const name of Object.keys(electronics)) {
    const price = electronics[name];
    console.log(`Price of ${name} is ${price}`);
  }

  
  arrayKeys = Object.keys(electronics)    // Object.keys это функции которая возвращает массив ключей объекта
  console.log(arrayKeys);           // Возвращает массив ключей