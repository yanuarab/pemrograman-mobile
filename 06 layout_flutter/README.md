# Laporan Praktikum 06 : Aplikasi Pertama dan Widget Dasar Flutter

Nama : Yanuar Alda Baran <br>
NIM : 244107060016 <br>
Absen : 21 <br>

## Praktikum 1: Membangun Layout di Flutter

### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.
![hasil](assets/praktikum1/langkah1.png)


Langkah 2: Buka file lib/main.dart
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

```dart
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
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

output:

![hasil](assets/praktikum1/langkah2.png)


### Langkah 3: Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

-Identifikasi baris dan kolom. Ada, Column utama + beberapa Row
-Apakah tata letaknya menyertakan kisi-kisi (grid)? Tidak ada grid
-Apakah ada elemen yang tumpang tindih? Tidak (semua tersusun rapi)
-Apakah UI memerlukan tab? Tidak ada
-Perhatikan area yang memerlukan alignment, padding, atau borders. 
Ada:
- Padding di teks
- Alignment di Row
- Spacing antar elemen

Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.


Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.