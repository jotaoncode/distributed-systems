const express = require('express');

const app = express();

app.get('/', (req, res) => {
  console.log('Your secret', process.env.the_secret);
  res.send('Ok');
});

app.listen(3000, () => {
  console.log('listening in port 3000');
});
