import React from 'react';
import TodoListItem from './todo_list_item';
import TodoForm from './todo_form';

class todoList extends React.Component {
  constructor(props) {
  super(props);

  }

  render() {
    console.log(this.props.receiveTodo);
    return(
      <div>
        <ul>
          {this.props.todos.map((obj,idx) => {
            return (
              <TodoListItem key={idx} title={obj.title}/>
            );
          })}
        </ul>
        <TodoForm receiveTodo = {this.props.receiveTodo}/>
      </div>
    );
  }
}


export default todoList;
