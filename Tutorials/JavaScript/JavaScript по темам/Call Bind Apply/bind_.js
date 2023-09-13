
function printName(hello, bye) {
  console.log(hello + this.firstName);
  console.log(bye + this.firstName);
}

const user = {
  firstName: 'Andrii',
}

const hello_and_bye = printName.bind(user, "Hello, ");

hello_and_bye("Bye, ");

