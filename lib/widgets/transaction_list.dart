import 'package:flutter/material.dart';

import './transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  final Function deleteTrans;

  TransactionList(this.transactions, this.deleteTrans);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: transactions.isEmpty
          ? LayoutBuilder(
              builder: (ctx, constrains) {
                return Column(
                  children: <Widget>[
                    Text(
                      'No transaction added yet!!',
                      style: Theme.of(context).textTheme.title,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: constrains.maxHeight * 0.6,
                      child: Image.asset(
                        'assets/image/waiting.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              },
            )
          : ListView.builder(
              itemBuilder: (buildContext, index) {
                // buildContext argument will be passed autamically by flutter
                return TransactionItem(
                    transaction: transactions[index], deleteTrans: deleteTrans);
              },
              itemCount: transactions
                  .length, // 'itemBuilder' function will run 'itemCount' times
            ),
    );
  }
}
