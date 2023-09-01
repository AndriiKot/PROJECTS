
const step1 = async () => console.log('step 1');
const step2 = async () => console.log('step 2');
const step3 = async () => console.log('step 3');


 step1().then(step2).then(step3);



