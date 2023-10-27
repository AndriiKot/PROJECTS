
  const step1 = async () => console.log('step1');
  const step2 = async () => console.log('step2');
  const step3 = async () => console.log('step3');


console.log('Await: ')
const main = async () => {
  await step1();
  await step2();
  await step3();
  main2();
};

main();

const main2 = async () => {
  console.log('\nthen: ');
  await step1().then(step2).then(step3);
};



