import React from 'react';
import uniqueId from '../../util/unique_id';
import receiveTodo from '../../actions/todo_actions';

class todoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {title: "",body: "",done:false,id: uniqueId()};
  }

  setTitle(e) {
      this.setState({title: e.currentTarget.value});
      console.log(this.state.title);

  }

  setBody(e) {
      this.setState({title: e.currentTarget.value});
      console.log(this.state.body);
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log("hello");
    console.log(this.state.unique_id);
    this.setState({id: new Date()});
    console.log(this.props.receiveTodo(this.state));




  }

  render() {

    return (
      <form>
        <label>
          Title
          <input type="text" onChange={(e) => this.setTitle(e)}/>
        </label>
        <label>
          Body
          <input type="text" onChange={(e) => this.setBody(e)}/>
        </label>
        <button type="button" onClick={this.handleSubmit.bind(this)}> Submit</button>
      </form>
    );
  }
}


export default todoForm;
