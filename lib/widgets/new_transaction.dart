import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTrans;

  NewTransaction(this.addNewTrans);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                addNewTrans(
                  titleController.text,
                  double.parse(amountController.text),
                );
                print(titleController.text);
                print(amountController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
