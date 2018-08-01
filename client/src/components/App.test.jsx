import React from 'react';
import { JSDOM } from 'jsdom';

// Enzyme configuration
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
configure({ adapter: new Adapter() });

import { shallow, mount, render } from 'enzyme';
import puppeteer from 'puppeteer';
import { shallowToJson } from 'enzyme-to-json';

import App from './App.jsx';
import Cart from './Cart.jsx';
import DynamicAddToCart from './DynamicAddToCart.jsx';
import StaticAddToCart from './StaticAddToCart.jsx';
import ProgressBar from './ProgressBar.jsx';

const port = 3003;
const pageUrl = `http://localhost:${port}`;

let page;
let browser;

const { window } = new JSDOM()
global.window = window

beforeAll(async () => {
  browser = await puppeteer.launch();
  page = await browser.newPage();
});

afterAll(() => {
  browser.close();
});

describe('Check Out sidebar', () => {
  const wrapper = shallow(<App/>);

  beforeEach(async () => {
    await page.goto(pageUrl, {waitUntil: 'networkidle2'});
  });

  it('renders correctly', async () => {
    expect(shallow(<App/>).find('div.main').exists()).toBe(true);
  });

  it('should have a static or a dynamic add to cart button', async () => {
    expect(shallow(<App/>).find('div.add-to-cart').exists()).toBe(true);
  })

});
