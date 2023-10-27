
const step1 = async () => console.log('step1');
const step2 = async () => console.log('step2');
const step3 = async () => console.log('step3');


const main = async () => {
   await step1();
   await step2();
   await step3();
};

const main2 = async () => {
  await step1().then(step2).then(step3);
};


main();
main2();

step1();
step2();
step3();



