import 'package:flutter/material.dart';

void main() {
  runApp(aplikasi_wisata());
}

class aplikasi_wisata extends StatefulWidget {
  @override
  State<aplikasi_wisata> createState() => aplikasi_wisata_State();
}

class aplikasi_wisata_State extends State<aplikasi_wisata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffd2c7c7),
          title: Text(
            "Warna Warni Village",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            // GAMBAR
            Image.asset(
              'assets/kampung-warna-warni-image-by-instagram-@fajarhw.png',
              width: double.infinity,
              height: 331,
              fit: BoxFit.cover,
            ),

            // ALAMAT DAN KONTAK
            Container(
              color: Color(0xffffffff),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  // ALAMAT
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Alamat",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Jodipan, Malang",
                          style: TextStyle(
                            color: Color(0xff0a0a0a),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // KONTAK
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Kontak",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "0812-3456-7890",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // DETAIL WISATA
            Container(
              color: Color(0xffd2c7c7),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Detail Wisata",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Kampung Warna Warni Jodipan merupakan "
                    "salah satu tempat wisata di Kota Malang "
                    "yang terkenal dengan rumah-rumah berwarna "
                    "cerah dan pemandangan yang menarik.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
