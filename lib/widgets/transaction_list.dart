import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (buildContext, index) {
          // buildContext argument will be passed autamically by flutter
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
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  // width: 100,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '${transactions[index].amount.toStringAsFixed(2)} tk',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
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
                        transactions[index].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        DateFormat.yMMMEd()
                            .add_jm()
                            .format(transactions[index].date),
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
        },
        itemCount: transactions
            .length, // 'itemBuilder' function will run 'itemCount' times
      ),
    );
  }
}
