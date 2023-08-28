
const basket = { Laptop: 1500, Keyboard: 100, };
 
const goods = { HDMI: 10, Mouse: 25 };

const order = { ...basket, ...goods }




console.log(order);