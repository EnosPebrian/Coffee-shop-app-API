require('dotenv').config();
const express = require('express');
const cors = require('cors');
const bearertoken = require('express-bearer-token');
const routers = require('./routes/index');
const db = require('./models');

const PORT = process.env.PORT || 2000;

const app = express();
app.use(cors());
app.use(express.json());
app.use(bearertoken());
app.use('/users', routers.userRouter);
app.use('/products', routers.productRouter);
app.use('/category', routers.categoryRouter);
app.use('/transactions', routers.transactionRouter);
app.use('/transaction_details', routers.transactionDetailRouter);
app.use(
  '/public/product',
  express.static(`${__dirname}/../public/images/productImages`)
);

app.get('/test', (req, res) => {
  res.send('welcome my coffee shop API');
});

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
  // db.sequelize.sync({ alter: true });
});
