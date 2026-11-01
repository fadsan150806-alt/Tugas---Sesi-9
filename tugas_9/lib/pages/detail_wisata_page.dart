import 'package:flutter/material.dart';

class DetailWisataPage extends StatelessWidget {
  final String namaWisata;

  const DetailWisataPage({
    super.key,
    required this.namaWisata,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF087F8C);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          'Detail Wisata',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),

          child: Card(
            elevation: 3,
            shadowColor: primaryColor.withOpacity(0.12),
            color: Colors.white,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(23),
            ),

            child: Padding(
              padding: const EdgeInsets.all(25),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F2F1),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: const Icon(
                      Icons.travel_explore,
                      color: primaryColor,
                      size: 48,
                    ),
                  ),

                  const SizedBox(height: 23),

                  const Text(
                    'Informasi Destinasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    'Berikut adalah data wisata yang berhasil '
                    'diterima dari halaman sebelumnya.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.6,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAF5F4),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Column(
                      children: [
                        const Icon(
                          Icons.place,
                          color: primaryColor,
                          size: 28,
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          'NAMA TEMPAT WISATA',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: primaryColor,
                          ),
                        ),

                        const SizedBox(height: 9),

                        Text(
                          namaWisata,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF263238),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 18,
                      ),

                      SizedBox(width: 7),

                      Text(
                        'Data berhasil diterima',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Kembali ke Wisata'),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
