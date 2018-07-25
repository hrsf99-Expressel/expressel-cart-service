import React from 'react';

class StaticAddToCart extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="addToCart" onClick={this.props.onStaticAddToCartClicked}>Add to cart</div>
    )
  }
};

export default StaticAddToCart;
