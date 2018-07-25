import React from 'react';
import axios from 'axios';
import StaticAddToCart from './StaticAddToCart.jsx';

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
      subtotal: 0
    };
    this.getItemInfo = this.getItemInfo.bind(this);
    this.onStaticAddToCartClicked = this.onStaticAddToCartClicked.bind(this);
  }

  getItemInfo(){
    axios.get(`/item/10`).then((response) => {
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
  }

  onStaticAddToCartClicked(e) {
    e.preventDefault;
    alert('Clicked!');
    this.setState({itemNum: 1});
    console.log(this.state.itemNum);
  }


  render() {
    return (
      <div>
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
        <StaticAddToCart onStaticAddToCartClicked={this.onStaticAddToCartClicked}/>
        <div className="terms">20% off your first order, up to $20 with code <b>SUMMERFUN</b>. Expires Jul 31 2018. Exclusions apply. See Terms.</div>
      </div>
    );
  }
}

export default App;
