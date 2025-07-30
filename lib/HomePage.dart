import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'DetailProduct.dart';
import 'ProfilePage.dart';
import 'FavoritePage.dart';
import 'CartPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = const Color(0xFFF9A825); // Warna kuning dari SplashScreen
    final backgroundColor = const Color(0xFF1B254B); // Warna biru tua dari SplashScreen
    final cardColor = const Color(0xFF3B4666); // Warna biru medium untuk card
    final textSecondary = const Color(0xFFB0B8D4); // Warna teks sekunder

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView( // <-- agar bisa di-scroll
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            color: textSecondary,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Yahya Ayyas Syauqoni',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: textSecondary, size: 18),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          // Pastikan search bar bisa diketik
                          style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                          decoration: InputDecoration(
                            hintText: 'Search what do you want?',
                            hintStyle: TextStyle(color: textSecondary, fontFamily: 'Poppins'),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.tune, color: primaryColor, size: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Promo Banner
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '35% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.network(
                        'https://storage.googleapis.com/a1aa/image/d363eb0b-b13a-4c2b-953c-f4da684d3f2e.jpg',
                        width: 100,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Categories
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCategoryButton('Fruits', Icons.apple, true, primaryColor),
                    _buildCategoryButton('Dairy', Icons.emoji_food_beverage, false, cardColor),
                    _buildCategoryButton('Vegeta', Icons.grass, false, cardColor),
                    _buildCategoryButton('Meat', Icons.set_meal, false, cardColor),
                  ],
                ),
                const SizedBox(height: 24),

                // Popular Fruits
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Fruits',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ProductDetailPage()),
                        );
                      },
                      child: _buildProductCard(
                        'Orange',
                        49.99,
                        'https://storage.googleapis.com/a1aa/image/8d88de38-3a5c-4519-f9b5-544a7e905cd8.jpg',
                        primaryColor,
                        cardColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ProductDetailPage()),
                        );
                      },
                      child: _buildProductCard(
                        'Lemon',
                        46.99,
                        'https://storage.googleapis.com/a1aa/image/15d01bdc-30d2-44d2-0870-3222afad2666.jpg',
                        primaryColor,
                        cardColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ProductDetailPage()),
                        );
                      },
                      child: _buildProductCard(
                        'Apple',
                        39.99,
                        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=400&q=80',
                        primaryColor,
                        cardColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ProductDetailPage()),
                        );
                      },
                      child: _buildProductCard(
                        'Grape',
                        29.99,
                        'https://images.unsplash.com/photo-1502741338009-cac2772e18bc?auto=format&fit=crop&w=400&q=80',
                        primaryColor,
                        cardColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        elevation: 0, // <-- ini buat ngilangin garis bates
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const FavoritePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CartPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfilePage()),
            );
          }
        },
      ),
    );
  }

  Widget _buildCategoryButton(String label, IconData icon, bool isActive, Color color) {
    return Container(
      width: 80,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? color : const Color(0xFF3B4666),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: isActive ? Colors.white : const Color(0xFF8A94B2), size: 20),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : const Color(0xFF8A94B2),
              fontSize: 12,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, double price, String imageUrl, Color primaryColor, Color cardColor) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '4.8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Icon(Icons.favorite_border, color: primaryColor, size: 20),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: Image.network(
              imageUrl,
              height: 80,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image_not_supported, size: 40, color: Colors.white),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$$price',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                TextSpan(
                  text: ' /kg',
                  style: TextStyle(
                    color: const Color(0xFF8A94B2),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
