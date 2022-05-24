const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.status(200).json({response: 'Hello from service 2'});
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
