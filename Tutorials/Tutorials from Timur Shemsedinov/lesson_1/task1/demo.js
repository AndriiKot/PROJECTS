'use strict';

const INTERVAL = 500;
const MAX_VALUE = 10;
let counter = 0;
let timer = null;

const event = () => {
    if (MAX_VALUE === counter) {
        console.log("The End");
        clearInterval(timer);
        return;
    }
    console.dir({counter, date: new Date() });
    counter++;
};

console.log('Begin');
timer = setInterval(event,INTERVAL);