import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/category_page.dart';
import 'pages/detail_wisata_page.dart';

void main() {
  runApp(const WisataApp());
}

class WisataApp extends StatelessWidget {
  const WisataApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF087F8C);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jelajah Indonesia',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF263238),
          elevation: 0,
          centerTitle: false,
        ),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const HomePage(),

        '/pantai': (context) => const CategoryPage(
          title: 'Wisata Pantai',
          place: 'Pantai Kelingking',
          location: 'Nusa Penida, Bali',
          description:
              'Pantai Kelingking merupakan salah satu destinasi '
              'wisata terkenal di Bali. Pantai ini memiliki tebing '
              'unik, pasir putih, serta pemandangan laut biru yang '
              'indah. Keindahan alamnya menjadikan tempat ini '
              'sebagai salah satu tujuan wisata favorit.',
          imageAsset: 'assets/images/pantai_kelingking.webp',
          icon: Icons.beach_access,
          color: Color(0xFF087F8C),
          showDetailButton: true,
        ),

        '/gunung': (context) => const CategoryPage(
          title: 'Wisata Gunung',
          place: 'Gunung Bromo',
          location: 'Jawa Timur',
          description:
              'Gunung Bromo merupakan destinasi wisata alam '
              'yang terkenal dengan pemandangan matahari terbit. '
              'Kawasan ini memiliki lautan pasir yang luas dan '
              'panorama pegunungan yang indah.',
          imageAsset: 'assets/images/gunung_bromo.jpg',
          icon: Icons.terrain,
          color: Color(0xFF547A46),
        ),

        '/budaya': (context) => const CategoryPage(
          title: 'Wisata Budaya',
          place: 'Tari Saman',
          location: 'Aceh, Indonesia',
          description:
              'Tari Saman merupakan kesenian tradisional dari '
              'Aceh. Tarian ini terkenal dengan gerakan yang '
              'kompak, cepat, dan selaras dengan irama tepukan '
              'tangan. Tari Saman menjadi salah satu warisan '
              'budaya Indonesia.',
          imageAsset: 'assets/images/tari_saman.jpg',
          icon: Icons.museum,
          color: Color(0xFFAA7048),
        ),

        '/kuliner': (context) => const CategoryPage(
          title: 'Wisata Kuliner',
          place: 'Rendang',
          location: 'Sumatera Barat',
          description:
              'Rendang merupakan makanan khas Sumatera Barat '
              'yang diolah menggunakan berbagai rempah pilihan. '
              'Makanan ini memiliki cita rasa yang kaya dan '
              'menjadi salah satu kuliner Indonesia yang terkenal.',
          imageAsset: 'assets/images/rendang.jpg',
          icon: Icons.restaurant,
          color: Color(0xFFB66A35),
        ),

        '/detail': (context) {
          final namaWisata =
              ModalRoute.of(context)?.settings.arguments as String? ??
              'Wisata Indonesia';

          return DetailWisataPage(
            namaWisata: namaWisata,
          );
        },
      },
    );
  }
}
