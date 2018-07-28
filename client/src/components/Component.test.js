import React from 'react';
import { shallow, mount, render } from 'enzyme';
import puppeteer from 'puppeteer';
import { shallowToJson } from 'enzyme-to-json';

import App from './App.jsx';
import Cart from './Cart.jsx';
import DynamicAddToCart from './DynamicAddToCart.jsx';
import StaticAddToCart from './StaticAddToCart.jsx';

const port = 3003;
const pageUrl = `http://localhost:${port}`;

let page;
let browser;

beforeAll(async () => {
  browser = await puppeteer.launch();
  page = await browser.newPage();
});

afterAll(() => {
  browser.close();
});

describe('Check Out sidebar', () => {
  beforeEach(async () => {
    await page.goto(pageUrl, {waitUntil: 'networkidle2'});
  });

  it('renders correctly', async () => {
    expect(shallow(<App/>).find('div.main').exists()).toBe(true);
  });
});
