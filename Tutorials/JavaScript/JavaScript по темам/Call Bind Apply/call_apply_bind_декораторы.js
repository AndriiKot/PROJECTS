
function printThis() {
  console.log(this);
}


const user = {
  Name: 'Andrii'
}

function printName() {
  console.log(this.Name)
}


printThis(this);
printThis.call({});
printName.call(user);


