import 'package:flutter/material.dart';
import 'package:adminecomse/utils/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CategoryAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: Utils.categoryFormkey,
        child: TextFormField(
          controller: Utils.categoryController,
          validator: (val) {
            if (val.isEmpty) {
              return 'category cannot be empty';
            }
          },
          decoration: InputDecoration(hintText: 'Add category'),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            if (Utils.categoryController.text != null) {
              Utils.categoryServices
                  .createCategory(Utils.categoryController.text);
            }
            Fluttertoast.showToast(msg: 'Category created');
            Navigator.of(context).pop();
          },
          child: Text('Add'),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        )
      ],
    );
  }
}
