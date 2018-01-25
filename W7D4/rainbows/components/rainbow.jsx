import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>

          <NavLink to="/blue">BLUE</NavLink>
          <NavLink to="/green">GREEN</NavLink>
          <NavLink to="/violet">VIOLET</NavLink>
          <NavLink to="/red">RED</NavLink>

        <div id="rainbow">
           <Route path="/red" component={Red} />
           <Route path="/blue" component={Blue} />
           <Route path="/green" component={Green} />
           <Route path="/violet" component={Violet} />
          </div>
      </div>
    );
  }
}

export default Rainbow;
