import React from 'react';

class Cart extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      percentage: this.props.subtotal / this.props.storeMinimumFreeShipping * 100
    }
  }

  render() {
    let line;
    if (this.props.subtotal < this.props.storeMinimumFreeShipping && this.props.subtotal > 0) {
      line = <div>${this.props.storeMinimumFreeShipping - this.props.subtotal} to FREE delivery</div>
    }
    if (this.props.subtotal >= this.props.storeMinimumFreeShipping) {
      line = <div>Subtotal: ${this.props.subtotal} - FREE delivery</div>
    }
    if (this.props.subtotal === 0) {
      line = <div>Removed from cart</div>
    };
    return (
      <div className="cart">
        <img className="logo" src={this.props.storeLogo} />
        {line}
      </div>
    )
  }
}

export default Cart;
