import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((trans) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                  ),
                ),
                // width: 100,
                padding: EdgeInsets.all(10),
                child: Text(
                  '${trans.amount} tk',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      trans.title,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      DateFormat.yMMMEd().add_jm().format(trans.date),
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
