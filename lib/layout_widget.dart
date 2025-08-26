import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Contoh',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset('images/Logo smk ypc.jpg', width: 200),
          const SizedBox(height: 10),
          const Text(
            'SMK YPC TASIKMALAYA',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Pengembangan Aplikasi Flutter',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.call),
                  Text('Call'),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.map),
                  Text('Route'),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.share),
                  Text('Share'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}