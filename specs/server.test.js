const request = require('supertest');
const app = require('../server/index.js');

describe('GET Request', () => {
  test('It should respond to the GET request', (done) => {
    request(app).get('/item/2').then((response) => {
      expect(response.statusCode).toBe(200);
      done();
    });
  });
});
