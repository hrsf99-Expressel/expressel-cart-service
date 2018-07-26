import React from 'react';

const DynamicAddToCart = ({onMinusSignClicked, onPlusSignClicked, itemNum}) => (
  <div className="dynamicAddToCart">
    <div className="left" onClick={onMinusSignClicked}>
      <i class="material-icons md-12">remove_circle_outline</i>
    </div>
    <div className="center">{itemNum} in cart</div>
    <div className="right" onClick={onPlusSignClicked}>
      <i class="material-icons md-12">add_circle_outline</i>
    </div>
  </div>
)

export default DynamicAddToCart;
