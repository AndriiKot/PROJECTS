
  const basket = {
    Laptop: 1500,
    Mouse: 25,
    Keyboard: 100,
    HDMI: 10,
  };

  for (const [name, price] of Object.entries(basket)) {
    console.log(`Price of ${name} is ${price}`);
  }

  
  array = Object.entries(basket); // Преобразует объетк в массив в котором елементы это массивы полей данного объекта у каждого из которого первый элемент это
                                  // ключе  а второй это значение этого ключа
  console.log(array);