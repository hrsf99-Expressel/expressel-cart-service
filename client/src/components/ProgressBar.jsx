import React from 'react';

const ProgressBar = ({percentage}) => {
  return (
    <div className="progressBar">
      <Filler percentage={percentage}/>
    </div>
  )
}

const Filler = (props) => {
  return (
    <div className="filler" style={{width: `${percentage}%`}}></div>
  )
}

export default ProgressBar;
