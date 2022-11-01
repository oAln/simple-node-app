const express = require('express');

const app = express();

const path = require('path');

const router = express.Router();

router.get('/', (req, res)=>{
    res.sendFile(path.join(__dirname+'/index.html'))
});

app.use('/', router);

app.listen(process.env.port || 8000);

console.log('Running at port 8000');