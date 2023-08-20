
function myFirstCallBack(value) {
    console.log(value);
}

function sum(arg1,arg2,callback) {
    const value = arg1 + arg2;
    callback(value)
}

myFirstCallBack(13)
sum(4,5,myFirstCallBack)
