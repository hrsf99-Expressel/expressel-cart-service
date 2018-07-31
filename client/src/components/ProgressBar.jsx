import React from 'react';

const ProgressBar = ({percentage}) => {
  return (
    <div className="progress-bar">
      <Filler percentage={percentage}/>
    </div>
  )
}

const Filler = ({percentage}) => {
  let progress = "";
  if (percentage < 100) {
    progress = "filler";
  } else {
    progress = "filler-full";
  }
  console.log(percentage)
  return (
    <div className={progress} style={{ width: `${percentage}%` }} />
  )
}

export default ProgressBar;
