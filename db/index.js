const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'mysql',
  user: 'root',
  password: '',
  database: 'expressel',
});

connection.connect();

const getItembyID = (id, callback) => {
  connection.query('select * from items where `id` = ?', [id], callback);
};

module.exports = {
  getItembyID,
};
