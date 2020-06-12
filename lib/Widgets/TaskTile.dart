import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  TaskTile({this.isChecked, this.tasktitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        // onChanged: checkBoxState,
      ),
    );
  }
}

//TextCheckBox(
//        isChecked,(bool checkboxState) {
//setState(
//() {
//isChecked = checkboxState;
//},
//);
//},
