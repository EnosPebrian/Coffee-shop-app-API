const TransactionController = require("../controllers/transaction.controller");
const {
  validateEditTransactionRule,
  generalValidate,
  validateNewTransactionRule,
  validateDeleteEmptyTransaction,
} = require("../middlewares/validators/transaction.validator");
const {
  cashierValidator,
} = require("../middlewares/validators/user.validator");
const route = require("express").Router();

route.get(
  "/outstanding",
  cashierValidator,
  TransactionController.getOutStandingTransaction.bind(TransactionController)
);
route.get(
  "/:id",
  cashierValidator,
  TransactionController.getOneWithDetail.bind(TransactionController)
);

route.post(
  "/",
  validateNewTransactionRule(),
  generalValidate,
  cashierValidator,
  TransactionController.create.bind(TransactionController)
);

route.patch(
  "/:id",
  validateEditTransactionRule(),
  generalValidate,
  cashierValidator,
  TransactionController.update.bind(TransactionController)
);

route.delete(
  `/:id`,
  validateDeleteEmptyTransaction,
  cashierValidator,
  TransactionController.delete.bind(TransactionController)
);

module.exports = route;
