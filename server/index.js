const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const db = require('../db/index.js');

const app = express();

const PORT = 3003;

// Use cors to allow cross origin request
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/item/:id', express.static(__dirname + '/../client/dist'));
app.use(express.static(__dirname + '/../client/dist'));

// Design API to look up item by ID:

app.get('/item/:id/sidebar', (req, res) => {
  db.getItembyID(req.params.id, (err, results) => {
    if (err) {
      console.log('Error sending get to API', err);
    } else {
      res.status(200).send(results);
    }
  });
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});

module.exports = app;
