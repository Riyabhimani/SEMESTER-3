//  Demonstrate “child_process” core module in NodeJS 

const child_process = require ('child_process');

child_process.exec ('xyz.txt' , (err,stdout,stdin) => {
    console.log(stdout);
});