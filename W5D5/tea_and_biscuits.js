const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

 function ask() {

  reader.question("Would you like some tea?", function (answer) {

    reader.question("Would you like some biscuits?", function (response) {
      console.log(`You replied ${response}!`);

      console.log(`You replied ${answer}!`);
  });

  });
}

ask();



  // function Cat () {
  //   this.name = 'Markov';
  //   this.age = 3;
  // }
  //
  // function Dog () {
  //   this.name = 'Noodles';
  //   this.age = 4;
  // }
  //
  // Dog.prototype.chase = function (cat) {
  //   console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`);
  // };
  //
  // const Markov = new Cat ();
  // const Noodles = new Dog ();
