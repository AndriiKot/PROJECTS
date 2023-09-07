'use strict';

const fs = require('node:fs');
const events = require('node:events');
const timers1 = require('node:timers');
const timers2 = require('node:timers/promises');
//const ws = require('ws');
const exp = require('./export.js');


//console.log(Object.keys(fs));
console.log(Object.keys(exp));
exp.fn(3)