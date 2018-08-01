import React from 'react';

import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
configure({ adapter: new Adapter() });

import { shallow } from 'enzyme';
import StaticAddToCart from './StaticAddToCart.jsx';

describe('Static Add To Cart button', () => {

  it('renders correctly', () => {
    expect(shallow(<StaticAddToCart/>).find('div.addToCart').exists()).toBe(true);
  });

});
