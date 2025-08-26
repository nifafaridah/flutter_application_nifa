import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset('images/smk-ypc.png'),
          const SizedBox(height: 10),
          const Text('SMK YPC TASIKMALAYA')
        ],
      ),
      );
  }
}
