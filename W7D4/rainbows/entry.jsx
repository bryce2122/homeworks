import React from 'react';
import ReactDOM from 'react-dom';
import {
  HashRouter,
} from 'react-router-dom';
import Rainbow from './components/rainbow.jsx';
import Blue from './components/blue.jsx';

const Root = () => (
  <HashRouter>
    <Rainbow/>
  </HashRouter>
);

document.addEventListener('DOMContentLoaded', () => {
  const main = document.getElementById('main');
  ReactDOM.render(
    <Root />,
    main
  );
});
