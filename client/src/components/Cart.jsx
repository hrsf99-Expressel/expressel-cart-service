import React from 'react';
import ProgressBar from './ProgressBar.jsx';

class Cart extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let line;
    if (this.props.subtotal < this.props.storeMinimumFreeShipping && this.props.subtotal > 0) {
      line = <div>${(this.props.storeMinimumFreeShipping - this.props.subtotal).toFixed(2)} to FREE delivery</div>
    }
    if (this.props.subtotal >= this.props.storeMinimumFreeShipping) {
      line = <div>Subtotal: ${(this.props.subtotal).toFixed(2)} - FREE delivery</div>
    }
    if (this.props.subtotal === 0) {
      line = <div>Removed from cart</div>
    };
    return (
      <div className="cart">
        <img className="logo" src={this.props.storeLogo} />
        <div className="progress-container">
          {line}
          <ProgressBar percentage={this.props.subtotal / this.props.storeMinimumFreeShipping * 100}/>
        </div>
      </div>
    )
  }
}

export default Cart;
