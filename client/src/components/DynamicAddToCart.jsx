import React from 'react';

const DynamicAddToCart = ({onMinusSignClicked, onPlusSignClicked, itemNum}) => (
  <div className="dynamicAddToCart">
    <div className="left" onClick={onMinusSignClicked}>Remove</div>
    <div className="center">{itemNum} in cart</div>
    <div className="right" onClick={onPlusSignClicked}>Add</div>
  </div>
)

export default DynamicAddToCart;
