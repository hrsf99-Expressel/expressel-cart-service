const dataGenerator = require('../db/databaseGenerator.js');
const mysql = require('mysql');

const { generateRandomNumber } = dataGenerator;
const { generateRandomDate } = dataGenerator;
const { randomItemPicker } = dataGenerator;

describe('generateRandomNumber', () => {
test('Will return a number with decimals', () => {
    const output = generateRandomNumber(15, 20, 2);
    expect(output % 10).not.toBe(0);
  });
});

describe('generateRandomDate', () => {
  test('Will return a string', () => {
    const output = generateRandomDate(new Date(2018, 7, 1), new Date(2018, 7, 14));
    expect(typeof output).toBe('string');
  });
});

describe('randomItemPicker', () => {
  test('Will pick an item in the array of items', () => {
    const output = randomItemPicker(['apple', 'banana', 'orange']);
    expect(['apple', 'banana', 'orange']).toContain(output);
  });
});
