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
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transaction added yet!!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: Image.asset(
                    'assets/image/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (buildContext, index) {
                // buildContext argument will be passed autamically by flutter
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: FittedBox(
                          child: Text(
                            '${transactions[index].amount.toStringAsFixed(2)} tk',
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMEd()
                          .add_jm()
                          .format(transactions[index].date),
                    ),
                  ),
                );
              },
              itemCount: transactions
                  .length, // 'itemBuilder' function will run 'itemCount' times
            ),
    );
  }
}

// return Card(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.symmetric(
//                           vertical: 10,
//                           horizontal: 15,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 2,
//                             color: Theme.of(context).primaryColorDark,
//                           ),
//                         ),
//                         // width: 100,
//                         padding: EdgeInsets.all(10),
// child: Text(
//   '${transactions[index].amount.toStringAsFixed(2)} tk',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).primaryColor,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Container(
//                             margin: EdgeInsets.all(5),
// child: Text(
//   transactions[index].title,
//   style: Theme.of(context).textTheme.title,
// ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(5),
// child: Text(
//   DateFormat.yMMMEd()
//       .add_jm()
//       .format(transactions[index].date),
//                               style: TextStyle(
//                                 color: Colors.blueGrey,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
