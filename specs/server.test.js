const request = require('supertest');
const app = require('../server/index.js');

describe('API', () => {
  test('Should get a response the GET method', () => {
    return request(app)
      .get('/item/1')
      .then(response => {
        expect(response.statusCode).toBe(200);
      });
  });
});
