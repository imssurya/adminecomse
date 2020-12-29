import 'package:flutter/material.dart';
import 'package:adminecomse/utils/utils.dart';

class DashboardColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          subtitle: FlatButton.icon(
            onPressed: null,
            icon: Icon(
              Icons.attach_money,
              size: 30.0,
              color: Colors.green,
            ),
            label: Text(
              '12,000',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.grey,
              ),
            ),
          ),
          title: Text(
            'Revenue',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.grey),
          ),
        ),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Card(
                  child: ListTile(
                    title: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.people_outline),
                      label: Text(
                        'Users',
                      ),
                    ),
                    subtitle: Text(
                      '7',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Utils.active, fontSize: 60.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                    title: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.track_changes),
                      label: Text('Products'),
                    ),
                    subtitle: Text(
                      '120',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Utils.active, fontSize: 60.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                    title: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.tag_faces),
                      label: Text("Solid"),
                    ),
                    subtitle: Text(
                      '13',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Utils.active, fontSize: 60.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                    title: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.shopping_cart),
                      label: Text("Orders"),
                    ),
                    subtitle: Text(
                      '5',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Utils.active, fontSize: 60.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                    title: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.close),
                      label: Text("Return"),
                    ),
                    subtitle: Text(
                      '0',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Utils.active, fontSize: 60.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
