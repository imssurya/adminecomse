import 'package:flutter/material.dart';
import 'package:adminecomse/widgets/categoryalert.dart';
import 'package:adminecomse/widgets/brandalert.dart';

class ManageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Add Product'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.change_history),
          title: Text('Products List'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.add_circle),
          title: Text('Add Category'),
          onTap: () {
            showDialog(context: context, builder: (_) => CategoryAlert());
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.category),
          title: Text('Category List'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.add_circle_outline),
          title: Text('Add Brand'),
          onTap: () {
            showDialog(context: context, builder: (_) => BrandAlert());
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text('Brand List'),
          onTap: () {},
        ),
        Divider(),
      ],
    );
  }
}
