import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
        32,
      ), // Padding 32 piksel di seluruh tepi (Soal 3)
      child: Row(
        children: [
          Expanded(
            /* Soal 1: Wrap Column dengan Expanded agar mengisi sisa ruang */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              /* Soal 1: Posisi di awal baris */
              children: [
                /* Soal 2: Teks judul dalam Container dengan padding bawah 8 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey /* Soal 2: Warna teks abu-abu */,
                  ),
                ),
              ],
            ),
          ),
          /* Soal 3: Ikon bintang merah dan teks rating 41 */
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

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
        'Wisata Gunung di Batu menawarkan pemandangan alam yang indah dan udara yang sejuk. Tempat ini sangat cocok untuk berlibur bersama keluarga maupun teman-teman.\n\nNama: Zuhrotul Baeti | NIM: 2505077',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Zuhrotul Baeti dan 2505077',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/toba.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

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
