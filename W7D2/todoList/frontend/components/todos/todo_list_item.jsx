import React from 'react';


class todoListItem extends React.Component {

  constructor(props){
    super(props);
  }

  render() {
    return (
      <li>{this.props.title}</li>
    );
  }
}
export default todoListItem;
