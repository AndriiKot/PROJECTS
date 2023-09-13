
function printThis() {
  console.log(this);
}


const user = {
  Name: 'Andrii',
}

function printName(hello,bye) {
  console.log(hello + this.Name + '!');
  console.log(bye + this.Name +  '!');
}




printThis(this);
printThis.call({});
printName.call(user);
printName.call(user, 'Hello, ');
printName.call(user, 'Hello, ','Bye, ');




