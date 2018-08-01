import React from 'react';

import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
configure({ adapter: new Adapter() });

import { shallow } from 'enzyme';
import ProgressBar from './ProgressBar.jsx';

describe('ProgressBar', () => {

  it('renders correctly', () => {
    expect(shallow(<ProgressBar/>).find('div.progress-bar').exists()).toBe(true);
  });

});
