import 'package:flutter/material.dart';
import 'package:adminecomse/utils/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BrandAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: Utils.brandFormkey,
        child: TextFormField(
          controller: Utils.brandController,
          validator: (val) {
            if (val.isEmpty) {
              return 'Brand cannot be empty';
            }
          },
          decoration: InputDecoration(hintText: 'Add Brand'),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            if (Utils.brandController.text != null) {
              Utils.brandServices.createBrand(Utils.brandController.text);
            }
            Fluttertoast.showToast(msg: 'Brand Added');
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
