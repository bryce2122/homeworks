import {RECEIVE_TODOS,RECEIVE_TODO} from '../actions/todo_actions.js';

const initialState = {
  1: {
    id: 1,
    title: 'wash car',
    body: 'with soap',
    done: false
  },
  2: {
    id: 2,
    title: 'wash dog',
    body: 'with shampoo',
    done: true
  },
};

const todosReducer = (state = initialState, action) => {
  switch(action.type) {

    case RECEIVE_TODOS:
    const newState = {};
     action.todos.forEach((obj,idx) => {
       newState[idx + 1] = obj;
      });

     return newState;


    case RECEIVE_TODO:
      const newState2 = Object.assign({}, state);
      console.log(action.todo.id);
      newState2[action.todo.id] = action.todo;
      return newState2;

    default:
      return state;
  }
};

export default todosReducer;
