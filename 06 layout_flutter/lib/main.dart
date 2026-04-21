import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Yanuar - 244107060016',
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

            // 2. Judul + lokasi + rating
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                  'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                     SizedBox(height: 4),
                         Text(
                           'Kandersteg, Switzerland',
                              style: TextStyle(color: Colors.grey),
             ),
           ],
      ),
    ),
    const Icon(Icons.star, color: Colors.red),
    const SizedBox(width: 4),
    const Text('41'),
  ],
)
                  ),
            

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
            Padding(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
                'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in '
                'the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}