import 'package:flutter/material.dart';
// import 'package:flutter_application_nifa/latihan_Listitem.dart';
import 'package:flutter_application_nifa/latihan_listtitle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter',
      debugShowCheckedModeBanner: false,
      home: LayoutListItem(),
    );
  }
}
