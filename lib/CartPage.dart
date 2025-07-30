import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Shopping Cart',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 24),
            // Contoh card keranjang
            Container(
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://storage.googleapis.com/a1aa/image/15d01bdc-30d2-44d2-0870-3222afad2666.jpg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lemon',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '\$6.99 /kg',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.shopping_bag, color: primaryColor),
                ],
              ),
            ),
            // Tambahkan card lain jika ingin
          ],
        ),
      ),
    );
  }
}
