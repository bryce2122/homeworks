import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Indigo from './indigo';


class Blue extends React.Component {
  render() {
    return (
      <div className="blue">
        <h2 className="blue"></h2>

        <Route path="/blue/indigo" component={Indigo} />
        <NavLink to="/blue/indigo">Indigo</NavLink>
        <NavLink exact to="/blue">BLUE</NavLink>

      </div>
    );
  }
};

export default Blue;
