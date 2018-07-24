const mysql = require('mysql');
const moment = require('moment');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
});

connection.connect();

// Drop database if it exists:
connection.query('drop database if exists expressel;', (error) => {
  if (error) throw error;
});

// Create new database:
connection.query('create database expressel;', (error) => {
  if (error) throw error;
});

// Use the newly-created database
connection.query('use expressel;', (error) => {
  if (error) throw error;
});

// Create table 'items'
connection.query(`create table if not exists items (
  id integer not null auto_increment,
  price float not null,
  storeID int not null,
  storeName varchar(100) not null,
  storeMinimumFreeShipping int not null,
  itemDeliveryTime varchar(100) not null,
  primary key (id)
);`, (error) => {
  if (error) throw error;
});

// Create a function to generate a random number:
const generateRandomNumber = (min, max, decimal = 0) => {
  const rand = Math.random() * (max - min) + min;
  const power = decimal ** 10;
  return Math.floor(rand * power) / power;
};

const generateRandomDate = (start, end) => {
  const randomDate = new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
  const prettyDate = moment(randomDate).format('LL');
  return prettyDate;
};

const randomItemPicker = array => array[Math.floor(Math.random() * array.length)];

const stores = [
  {
    storeID: 1,
    storeName: 'Target',
    storeMinimumFreeShipping: 15,
  },
  {
    storeID: 2,
    storeName: 'Walmart',
    storeMinimumFreeShipping: 35,
  },
  {
    storeID: 3,
    storeName: 'Walgreens',
    storeMinimumFreeShipping: 15,
  },
  {
    storeID: 4,
    storeName: 'Costco',
    storeMinimumFreeShipping: 35,
  },
];

// Use to generate a random list of items
const generateItems = (num) => {
  const itemArray = [];
  for (let i = 0; i < num; i++) {
    const randomStore = randomItemPicker(stores);
    const generatedItem = {
      price: generateRandomNumber(1, 3000, 2),
      storeID: randomStore.storeID,
      storeName: randomStore.storeName,
      storeMinimumFreeShipping: randomStore.storeMinimumFreeShipping,
      itemDeliveryTime: generateRandomDate(new Date(2018, 7, 1), new Date(2018, 7, 14)),
    };
    itemArray.push(generatedItem);
    connection.query(`insert into items (
        price,
        storeID,
        storeName,
        storeMinimumFreeShipping,
        itemDeliveryTime
      ) values (
        '${generatedItem.price}',
        '${generatedItem.storeID}',
        '${generatedItem.storeName}',
        '${generatedItem.storeMinimumFreeShipping}',
        '${generatedItem.itemDeliveryTime}')`, (error) => {
      if (error) throw error;
    });
  }
  return itemArray;
};

// Insert 100 items into the database:
generateItems(100);

// Export modules
module.exports = {
  generateRandomNumber,
  generateRandomDate,
  randomItemPicker,
  generateItems,
};
