# DOM conspect

### 1.0 !!! WARNING !!!
```js
const btn = document.createElement("button");
btn.textContent = "Button 1";
document.body.append(btn);


// !!! WARNING !!!

console.log(btn);            //  !!! <button>Button 2</button> !!!!

btn.textContent = "Button 2";

console.log(btn);            //  !!! <button>Button 2</button> !!!!

// !!! WARNING !!!

``