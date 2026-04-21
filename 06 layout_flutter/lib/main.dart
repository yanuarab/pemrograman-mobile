import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // TITLE SECTION 
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            //soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          //soal 3
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            // 1. Gambar
            Image.network(
              'https://picsum.photos/600/240',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),

            // 2. Title Section (SUDAH DIMASUKKAN)
            titleSection,

            // 3. Tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    Icon(Icons.call, color: Colors.blue),
                    SizedBox(height: 4),
                    Text('CALL'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.near_me, color: Colors.blue),
                    SizedBox(height: 4),
                    Text('ROUTE'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.blue),
                    SizedBox(height: 4),
                    Text('SHARE'),
                  ],
                ),
              ],
            ),

            // 4. Deskripsi
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
                'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}