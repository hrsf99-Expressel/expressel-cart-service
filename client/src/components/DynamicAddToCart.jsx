import React from 'react';

const DynamicAddToCart = ({onMinusSignClicked, onPlusSignClicked, itemNum}) => (
  <div className="dynamicAddToCart containerButton">
    <div className="grid-item" onClick={onMinusSignClicked}>
      <i className="material-icons md-12">remove_circle_outline</i>
    </div>
    <div className="grid-item"><span className="itemNum">{itemNum}</span> in cart</div>
    <div className="grid-item" onClick={onPlusSignClicked}>
      <i className="material-icons md-12">add_circle_outline</i>
    </div>
  </div>
)

export default DynamicAddToCart;
