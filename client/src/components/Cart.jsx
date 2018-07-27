import React from 'react';
//import ProgressBar from './ProgressBar.jsx';

class Cart extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      percentage: this.props.subtotal / this.props.storeMinimumFreeShipping
    }
  }

  render() {
    let line;
    console.log('percentage', this.state.percentage);
    console.log('Subtotal',this.props.subtotal);
    console.log('Store minimum free shipping', this.props.storeMinimumFreeShipping);
    if (this.props.subtotal < this.props.storeMinimumFreeShipping && this.props.subtotal > 0) {
      line = <div>${this.props.storeMinimumFreeShipping - this.props.subtotal} to FREE delivery</div>
    }
    if (this.props.subtotal >= this.props.storeMinimumFreeShipping) {
      line = <div>Subtotal: ${this.props.subtotal} FREE delivery</div>
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
