import 'package:flutter/material.dart';

class ListViewSeperator extends StatefulWidget {
  const ListViewSeperator({Key? key}) : super(key: key);

  @override
  _ListViewSeperatorState createState() => _ListViewSeperatorState();
}

class _ListViewSeperatorState extends State<ListViewSeperator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ListView Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                iconsData[index],
              ),
              title: Text(
                labels[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<String> labels = ['Name', 'Phone Number', 'Album'];

final List<IconData> iconsData = [
  Icons.person,
  Icons.phone,
  Icons.album,
];

tile() {
  return ListTile(
    leading: Icon(Icons.person),
    title: Text('Name'),
  );
}
