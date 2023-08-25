 const basket = [
   { name: 'Laptop', price: 1500 },
   { name: 'Mouse', price: 25 },  
   { name: 'Keyboard', price: 100 },
   { name: 'HDMI', price: 10 },
 ];

 for (const { name, price } of basket) {
   console.log(`Price of ${name} is ${price}`);
 }

// const { name, price } в даной конструкции {..} называется дестроктурирующий оператор
//  ` .. ` это шаблоная строка в которую можно вставлять js выражения при помощи конструкции ${}