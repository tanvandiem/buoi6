import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Your Profile',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage(
                      'assets/profile.png'), // Thay đổi đường dẫn tùy thuộc vào ảnh của bạn
                ),
                const SizedBox(height: 84),
                const Divider(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),
                // Divider(),
                _buildname(lable: "First name", value: "Hung"),
                const SizedBox(
                  height: 24,
                ),
                _buildname(lable: "Last name", value: "Nguyen"),
                const SizedBox(
                  height: 24,
                ),
                _buildname(
                    lable: "Email address", value: "dannamdinh49@gmail.com"),
                const SizedBox(
                  height: 24,
                ),
                _buildname(lable: "Mobile phone", value: "+84364011846"),

                const SizedBox(
                  height: 32,
                ),

                const Divider(
                  height: 20,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "My skills",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _builditeam(image: 'assets/dart.png', name1: 'Dart'),
                    SizedBox(width: 100,), 
                    _builditeam(image: 'assets/flutter.png', name1: 'Flutter'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _builditeam(image: 'assets/js.png', name1: 'JS'),
                     SizedBox(width: 100,), 
                    _builditeam(image: 'assets/html.png', name1: 'HTML'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildname({
    required String lable,
    required String value,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8D9F67),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF676E57),
            ),
          ),
        ],
      );
  Widget _builditeam({
    required String image,
    required String name1,
  }) =>
      Column(
        children: [
          Image.asset(
            image,
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name1,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8D9F67),
            ),
          ),
        ],
      );
}
