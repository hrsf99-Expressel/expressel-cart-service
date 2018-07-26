import React from 'react';

class DynamicAddToCart extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="dynamicAddToCart">
        <div className="left" onClick={this.props.onMinusSignClicked}>Remove</div>
        <div className="center">{this.props.itemNum} in cart</div>
        <div className="right" onClick={this.props.onPlusSignClicked}>Add</div>
      </div>
    )
  }
};

export default DynamicAddToCart;
