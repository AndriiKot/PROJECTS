
function printThis() {
  console.log(this);
}



printThis(this);
printThis.call({});
