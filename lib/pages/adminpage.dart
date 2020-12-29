import 'package:adminecomse/db/brandservices.dart';
import 'package:adminecomse/db/categoryservices.dart';
import 'package:adminecomse/widgets/dashboardcolumn.dart';
import 'package:flutter/material.dart';
import 'package:adminecomse/utils/utils.dart' as pg;
import 'package:adminecomse/widgets/managelistview.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  pg.Page _selectedPage = pg.Page.dashboard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    _selectedPage = pg.Page.dashboard;
                  });
                },
                icon: Icon(
                  Icons.dashboard,
                  color: _selectedPage == pg.Page.dashboard
                      ? pg.Utils.active
                      : pg.Utils.notActive,
                ),
                label: Text('Dashboard'),
              ),
            ),
            Expanded(
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    _selectedPage = pg.Page.manege;
                  });
                },
                icon: Icon(
                  Icons.sort,
                  color: _selectedPage == pg.Page.manege
                      ? pg.Utils.active
                      : pg.Utils.notActive,
                ),
                label: Text('Manage'),
              ),
            )
          ],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: loadScreen(),
    );
  }

  Widget loadScreen() {
    switch (_selectedPage) {
      case pg.Page.dashboard:
        return DashboardColumn();
        break;
      case pg.Page.manege:
        return ManageListView();
        break;
      default:
        return Container();
    }
  }
}
