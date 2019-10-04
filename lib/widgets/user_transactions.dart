import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'Bag',
      amount: 100,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Shoe',
      amount: 500,
      date: DateTime.now(),
    ),
  ];

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
