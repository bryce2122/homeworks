import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {result: 0,num1:100,num2:200};
    // your code here
  }

  setNum1(e) {

      console.log(e.target.value);
      this.setState({ num1: parseInt(e.target.value)});
  }

  setNum2(e) {
    this.setState({ num2: parseInt(e.target.value)});
    }
  add() {
    event.preventDefault();
    console.log("check");
    this.setState({ result: this.state.num1 + this.state.num2});

    }
  subtract() {
    event.preventDefault();
    console.log("check");
    this.setState({ result: this.state.num1 - this.state.num2});

    }
  divide() {
    event.preventDefault();
    console.log("check");
    this.setState({ result: this.state.num1 / this.state.num2});

    }
  reset() {
    event.preventDefault();
    console.log("check");
    this.setState({ result: 0,num1:0,num2:0});


    }

  // your code here

  render() {
    return (
      <div>


         <input type="text" value={this.state.num1} onChange={this.setNum1.bind(this)}></input>
         <input type="text" value={this.state.num2} onChange={this.setNum2.bind(this)}></input>
         <button type="button" onClick={this.add.bind(this)}>add</button>
         <button type="button" onClick={this.subtract.bind(this)}>subtract</button>
         <button type="button" onClick={this.divide.bind(this)}>divide</button>
         <button type="button" onClick={this.reset.bind(this)}>rest</button>


        <h1>{this.state.result}</h1> // replace this with your code
      </div>
    );
  }
}

export default Calculator;
