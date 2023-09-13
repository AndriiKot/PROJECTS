
function printThis() {
  console.log(this);
}


const user = {
  Name: 'Andrii',
}

function printName(hello) {
  console.log(hello + this.Name + '!');
}




printThis(this);
printThis.call({});
printName.call(user);
printName.call(user, 'Hello, ')


