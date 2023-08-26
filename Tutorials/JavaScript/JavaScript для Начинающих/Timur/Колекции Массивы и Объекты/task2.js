
const prices = [10, 1500, 100, 50]

const price = prices.find((item) => item > 100);   // 'find' находит первую цену которая больше '100'
console.log({ price });

if( prices.includes(100)) console.log('100 is there');