import 'package:flutter/material.dart';

class ProfileWadget extends StatelessWidget {
  const ProfileWadget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 33, 243),
      ),
      body: Column(
        children: [
          Image.asset('images/potonifa.jpeg', width: 200),
          const SizedBox(height: 10),
          const Text(
            'NIFA FARIDAH',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 149, 33, 243),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  print('Tombol CALL ditekan!');
                },
                child: const Column(
                  children: [
                    Icon(Icons.call),
                    Text('CALL'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Tombol ROUTE ditekan!');
                },
                child: const Column(
                  children: [
                    Icon(Icons.map),
                    Text('ROUTE'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Tombol SHARE ditekan!');
                },
                child: const Column(
                  children: [
                    Icon(Icons.share),
                    Text('SHARE'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
