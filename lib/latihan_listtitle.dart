import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildItem(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heading,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildItem(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.message, color: Colors.green),
      title: Text(sender),
      subtitle: Text(body),
    );
  }
}

class ImageItem implements ListItem {
  final String title;
  final String imagePath;

  ImageItem(this.title, this.imagePath);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = [];

    for (int i = 0; i < 30; i++) {
      if (i % 5 == 0) {
        items.add(HeadingItem("Heading $i"));
      } else if (i % 2 == 0) {
        if (i % 3 == 0) {
          items.add(ImageItem("Kucing", "images/imagekucinglucu.jpg"));
        } else if (i % 3 == 1) {
          items.add(
              ImageItem("Pegunungan", "images/pemandangan pegunungan.jpg"));
        } else {
          items.add(ImageItem("Pantai", "images/pemandangan pantai.jpg"));
        }
      } else {
        items.add(MessageItem("Sender $i", "Message body $i"));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("List dengan Berbagai Item"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index].buildItem(context);
        },
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutListItem(),
    );
  }
}
