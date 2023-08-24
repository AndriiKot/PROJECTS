// 1

const add_1 = (a, b) => {
  const result = a + b;
  return result;
}

const add_2 = (a, b) => {
  return a + b;
}

const add_3 = (a, b) => a + b;

// 1
console.log('task 1:');

console.log(add_1(5,4));   // 9
console.log(add_2(4,4));   // 8
console.log(add_3(5,2));   // 7

const amount = add_1(4,2); 
console.log(amount);      // 6

console.log('='.repeat(55));


// 2 ...            
// 3
console.log('Fuction definition: \n');

function fnDefinition() {
   console.log("I am Funtion Definition \n");
}

console.log('function fnDefinition() {\n \
  console.log("I am Funtion Definition"); \n\
}\n');


process.stdout.write(`console.log(fnDefinition):  `);
console.log(fnDefinition,"\n");                     // [Function: fnDefinition]

process.stdout.write(`fnDefinition(); :  `);  
fnDefinition();                                    // I am Funtion Definition

console.log('\n');
console.log('='.repeat(55));


// 4
console.log('Funtion expression: \n') ;

const fnExpressionVersion1 = function fnExpressionVersion1() {
   console.log("I am fnExpressionVersion1");
}

console.log('const fnExpressionVersion1 = function fnExpresionVersion1() { \n\
   console.log("I am fnExpressionVersion1");\n\
}\n');

process.stdout.write('console.log(fnExpressionVersion1):  ');
console.log(fnExpressionVersion1,"\n")

process.stdout.write('fnExpressionVersion1(); :  ');
fnExpressionVersion1();

console.log('\n');
console.log('='.repeat(55));



























