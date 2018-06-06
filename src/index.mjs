import express from 'express';

express()
  .get('/', (req, res) => res.send('Hey Malkovich, think fast!'))
  .listen(3000, () => console.log('Stupid app listening on port 3000'));
