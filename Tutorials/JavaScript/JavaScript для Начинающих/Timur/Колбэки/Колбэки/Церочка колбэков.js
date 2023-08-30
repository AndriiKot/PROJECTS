
const printA = (callback) => {
  console.log('A');
  callback();
};

const printB = (callback) => {
  console.log('B');
  callback();
};

const printC = (callback) => {
  console.log('C');
  callback();
};


const step6 = () => console.log('End');
const step5 = () => printB(step6);
const step4 = () => printC(step5);
const step3 = () => printA(step4);
const step2 = () => printB(step3);
const step1 = () => printA(step2);

step1();