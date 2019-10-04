import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTrans;

  NewTransaction(this.addNewTrans);

  void submitTransData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addNewTrans(
      enteredTitle,
      enteredAmount,
    );
  }

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
              onSubmitted: (_) => submitTransData(),
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitTransData(),
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitTransData,
            ),
          ],
        ),
      ),
    );
  }
}
