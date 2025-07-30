import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF1B254B);
    const primaryColor = Color(0xFFF9A825);
    const cardColor = Color(0xFF3B4666);
    const textSecondary = Color(0xFFB0B8D4);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              // Avatar
              CircleAvatar(
                radius: 48,
                backgroundColor: primaryColor,
                child: const Icon(Icons.person, size: 48, color: Colors.white),
              ),
              const SizedBox(height: 16),
              // Nama
              const Text(
                'Yahya Ayyas Syauqoni',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 6),
              // Email
              Text(
                'yahahaha@gmail.com',
                style: TextStyle(
                  color: textSecondary,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 32),
              // Card menu profil
              Container(
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.edit, color: primaryColor),
                      title: const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                      onTap: () {},
                    ),
                    Divider(color: textSecondary, height: 1),
                    ListTile(
                      leading: Icon(Icons.settings, color: primaryColor),
                      title: const Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                      onTap: () {},
                    ),
                    Divider(color: textSecondary, height: 1),
                    ListTile(
                      leading: Icon(Icons.logout, color: primaryColor),
                      title: const Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
