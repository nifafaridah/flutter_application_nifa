import 'package:flutter/material.dart';

class LayoutListview1 extends StatelessWidget {
  const LayoutListview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview')),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.map), title: Text('Map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.photo), title: Text('Phone')),
        ],
      ),
    );
  }
}
