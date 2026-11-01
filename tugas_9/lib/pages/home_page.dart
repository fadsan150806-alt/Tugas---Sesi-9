import 'package:flutter/material.dart';
import '../widgets/menu_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.explore,
              color: Color(0xFF087F8C),
              size: 28,
            ),
            SizedBox(width: 9),
            Text(
              'Jelajah Indonesia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Color(0xFFE0F2F1),
              child: Icon(
                Icons.person_outline,
                color: Color(0xFF087F8C),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner utama
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/pantai_kelingking.webp',
                      width: double.infinity,
                      height: 235,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 235,
                          color: const Color(0xFF087F8C),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.landscape,
                            color: Colors.white,
                            size: 70,
                          ),
                        );
                      },
                    ),

                    Container(
                      height: 235,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.black.withOpacity(0.75),
                            Colors.black.withOpacity(0.05),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      left: 22,
                      right: 20,
                      top: 25,
                      bottom: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF087F8C),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              'JELAJAH NUSANTARA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          const Text(
                            'Temukan Keindahan\nIndonesia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Jelajahi alam, budaya, dan kuliner\n'
                            'khas dari berbagai daerah.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Judul kategori
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Jelajahi Kategori',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),

                  Text(
                    '4 Kategori',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Pilih pengalaman wisata yang ingin kamu temukan.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                ),
              ),
            ),

            const SizedBox(height: 18),

            // Menu kategori wisata
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                children: const [
                  MenuCard(
                    title: 'Pantai',
                    subtitle: 'Pesona laut Indonesia',
                    icon: Icons.beach_access,
                    color: Color(0xFF087F8C),
                    route: '/pantai',
                  ),

                  MenuCard(
                    title: 'Gunung',
                    subtitle: 'Keindahan alam',
                    icon: Icons.terrain,
                    color: Color(0xFF547A46),
                    route: '/gunung',
                  ),

                  MenuCard(
                    title: 'Budaya',
                    subtitle: 'Warisan Nusantara',
                    icon: Icons.museum,
                    color: Color(0xFFAA7048),
                    route: '/budaya',
                  ),

                  MenuCard(
                    title: 'Kuliner',
                    subtitle: 'Cita rasa daerah',
                    icon: Icons.restaurant,
                    color: Color(0xFFB66A35),
                    route: '/kuliner',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // Informasi tambahan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F4F3),
                  borderRadius: BorderRadius.circular(18),
                ),

                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xFF087F8C),
                      size: 28,
                    ),

                    SizedBox(width: 13),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tahukah Kamu?',
                            style: TextStyle(
                              color: Color(0xFF087F8C),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'Indonesia memiliki kekayaan alam, budaya, '
                            'dan kuliner yang beragam. Mari mengenal '
                            'keindahan Nusantara melalui aplikasi ini.',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.6,
                              color: Color(0xFF455A64),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
