import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // FUNCTION BUTTON COLUMN
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    // TITLE SECTION
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // BUTTON SECTION
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

   Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Gunung Bromo merupakan salah satu destinasi wisata alam paling terkenal di Indonesia yang terletak di Jawa Timur. '
    'Tempat ini menawarkan panorama matahari terbit yang memukau, hamparan lautan pasir yang luas, serta pemandangan kawah aktif yang menakjubkan. '
    'Keindahan alamnya menjadikan Gunung Bromo sebagai tujuan favorit wisatawan lokal maupun mancanegara untuk menikmati petualangan, fotografi, dan suasana pegunungan yang sejuk.\n\n'
    'Nama: Yanuar Alda Baran\n'
    'NIM: 244107060016',
    softWrap: true,
  ),
);

    return MaterialApp(
      title: 'Flutter Layout : Yanuar Alda Baran - 244107060016',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}