<!-- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet -->

<!-- to do: convert lewagon course into markdown -->
<!-- to do: assign pictures to  -->

when post/patch method, need to specify the type of content in the header: Content-Type: application/json


```javascript
```

first file opened > index.html:
- bundle.js is the compile javascript for the entire applicaiton (through webpack and babel transpiling of es6 code)

### const / var / let
var   > keep it for legacy code
let   > for variables that will change their value over time
const > for variables which cannot be reassigned


### functions
```javascript
// arrow functions
// difference: the value of 'this' is different from legacy functions
const App = (a, b) => {
  return a + b
}
<input onChange={event => console.log(event.target.value)}
```



// components
// stylesheets
// reducers
// actions
// data


### REACT
Every react component must have a render method, to render the jsx
ReactDOM > used to interact with the DOM
```javascript
ReactDOM.render(<App/>, document.querySelector('.container'))
```

export components > makes it available in other files.
```javascript
export default ComponentName;
```

React    > used to manage components

Class Component > we're creating a class, not an instance

### IMPORT
// when import code from file we write, we need to provide folder reference / path
// './' represents the current directory
```javascript
import ComponentName from './components/component_name';
```

// external libraries from the node modules folder
```javascript
import React from 'react';
```
