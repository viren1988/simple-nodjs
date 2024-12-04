// app.js
const express = require('express');
const app = express();
const port = 3005;

app.get('/', (req, res) => {
  res.send('Hello from Dockerized Node.js!');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

