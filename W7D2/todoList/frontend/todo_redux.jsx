
import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store.js';
import Root from './components/root';
import allTodos from './reducers/selectors';

window.selector = allTodos;

window.store = configureStore();
const store = configureStore();
document.addEventListener("DOMContentLoaded", function(){
  ReactDOM.render(<Root store={store}/>,document.getElementById('main'));
});
