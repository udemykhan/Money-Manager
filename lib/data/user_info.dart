enum TransactionType { outflow, inflow }

enum ItemCategoryType { fashion, grocery, payments }

class UserInfo {
  final String name, totalBalance, inflow, outflow;
  final List<Transaction> transactions;
  const UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transactions});
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName, itemName, amount, date;

  const Transaction(this.categoryType, this.transactionType,
      this.itemCategoryName, this.itemName, this.amount, this.date);
}

const List<Transaction> transaction1 = [
  Transaction(ItemCategoryType.fashion, TransactionType.outflow, 'Shoes',
      'Puma', '\$250', 'Oct, 23'),
];
const List<Transaction> transaction2 = [
  Transaction(ItemCategoryType.grocery, TransactionType.outflow, 'Shoes',
      'Puma', '\$250', 'Oct, 23'),
];
const List<Transaction> transaction3 = [
  Transaction(ItemCategoryType.payments, TransactionType.outflow, 'Shoes',
      'Puma', '\$250', 'Oct, 23'),
];

const userData = UserInfo(
    name: 'Jacob',
    totalBalance: '\$4,586.00',
    inflow: '\$4000.00',
    outflow: '\$2,000.00',
    transactions: transaction1);
