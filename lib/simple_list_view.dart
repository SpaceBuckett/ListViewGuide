import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SimpleListView extends StatefulWidget {
  const SimpleListView({Key? key}) : super(key: key);

  @override
  _SimpleListViewState createState() => _SimpleListViewState();
}

class _SimpleListViewState extends State<SimpleListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ListView Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album_outlined),
              title: Text('Album'),
            )
          ],
        ),
      ),
    );
  }
}
