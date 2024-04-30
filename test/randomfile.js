
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function greet(name) {
  console.log(`Hello, ${name}!`);
}
asksjdaksjdkjasd
function main() {
  rl.question('Welcome to the greeting program!\nEnter your name: ', (name) => {
    greet(name);

    rl.question('Would you like to be greeted again? (yes/no) ', (response) => {
      if (response.toLowerCase() === 'yes') {
        rl.question('Enter another name: ', (anotherName) => {
          greet(anotherName);
          rl.close();
        });
      } else {
        console.log('Goodbye!');
        rl.close();
      }
    });
  });
}

main();

let lol = {1,2,3,4};
