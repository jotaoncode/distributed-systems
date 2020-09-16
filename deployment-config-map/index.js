const express = require('express');

const app = express();

app.get('/', (req, res) => {
  console.log(process.env.the_secret);
  console.log(process.env.other_secret);
  console.log(process.env.log);
  console.log(process.env.something);
  res.send('Ok');
});

app.listen(3000, () => {
  console.log('listening in port 3000');
});
