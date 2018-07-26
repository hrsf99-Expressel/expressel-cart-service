import React from 'react';
import axios from 'axios';
import StaticAddToCart from './StaticAddToCart.jsx';
import DynamicAddToCart from './DynamicAddToCart.jsx';
import Cart from './Cart.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentID: 1,
      price: 0,
      deliveryDate: '',
      storeName: '',
      storeLogo: '',
      storeMinimumFreeShipping: 0,
      itemNum: 0,
      subtotal: 0,
      clicked: false
    };
    this.getItemInfo = this.getItemInfo.bind(this);
    this.onStaticAddToCartClicked = this.onStaticAddToCartClicked.bind(this);
    this.onMinusSignClicked = this.onMinusSignClicked.bind(this);
    this.onPlusSignClicked = this.onPlusSignClicked.bind(this);
    this.revertState = this.revertState.bind(this);
  }

  getItemInfo(){
    axios.get(`/item/82`).then((response) => {
      this.setState({price: response.data[0].price,
                     deliveryDate: response.data[0].itemDeliveryTime,
                     storeName: response.data[0].storeName,
                     storeLogo: response.data[0].storeLogo,
                     storeMinimumFreeShipping: response.data[0].storeMinimumFreeShipping
                   })
    })
  };

  componentDidMount() {
    this.getItemInfo();
  };

  onStaticAddToCartClicked(e) {
    e.preventDefault;
    console.log(this.state.itemNum);
    this.setState({itemNum: 1,
                  subtotal: this.state.price,
                  clicked: true}, () => {
                    console.log(this.state.itemNum);
                    console.log(this.state.subtotal);
                  });
    this.revertState();
  }

  onMinusSignClicked(e) {
    e.preventDefault;
    this.setState({itemNum: this.state.itemNum - 1,
                  subtotal: this.state.subtotal - this.state.price,
                  clicked: true}, () => {
                    console.log(this.state.itemNum);
                    console.log(this.state.subtotal);
                  });
    this.revertState();
  }

  onPlusSignClicked(e) {
    e.preventDefault;
    this.setState({itemNum: this.state.itemNum + 1,
                  subtotal: this.state.subtotal + this.state.price,
                  clicked: true}, () => {
                    console.log(this.state.itemNum);
                    console.log(this.state.subtotal);
                  });
    this.revertState();
  }

  revertState() {
    setTimeout(() => {
        this.setState({
        clicked: false
      })
    }, 3000);
  }

  render() {
    const itemNum = this.state.itemNum;
    const clicked = this.state.clicked;
    let cart;
    if (clicked) {
      cart = <Cart
              storeLogo={this.state.storeLogo}
              subtotal={this.state.subtotal}
              storeMinimumFreeShipping={this.state.storeMinimumFreeShipping}
            />
    }
    return (
      <div>
        <div>
          {cart}
        </div>
        <div className="deliveryRow">
          <div>Free delivery by {this.state.deliveryDate} on </div>
          <div>{this.state.storeName} orders over ${this.state.storeMinimumFreeShipping}</div>
        </div>
        <div className="ship">Ship to <span className="location">San Jose - 95121</span></div>
        <img className="logo" src={this.state.storeLogo} />
        <div className="soldBy">Sold by {this.state.storeName}</div>
        <div className="return">Free returns</div>
        <div className="saving">Deal: 20% off your first order</div>
        <div className="effectivePrice">${this.state.price}</div>
        <div>
          {itemNum ? (
          <DynamicAddToCart
            onMinusSignClicked={this.onMinusSignClicked}
            onPlusSignClicked={this.onPlusSignClicked}
            itemNum={this.state.itemNum}
          />
        ) : (
          <StaticAddToCart onStaticAddToCartClicked={this.onStaticAddToCartClicked}/>
        )}
        </div>
        <div className="terms">20% off your first order, up to $20 with code <b>SUMMERFUN</b>. Expires Jul 31 2018. Exclusions apply. See Terms.</div>
        <div className="howitworks">Google Express works with retailers to protect your order. Learn more</div>
      </div>
    );
  }
}

export default App;
