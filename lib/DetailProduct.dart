import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Remove 'const' from these declarations
    final primaryColor = Color(0xFFF9A825); // Warna kuning
    final backgroundColor = Color(0xFF1B254B); // Warna biru tua
    final cardColor = Color(0xFF3B4666); // Warna card
    final textSecondary = Color(0xFFB0B8D4); // Warna teks sekunder

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    'https://storage.googleapis.com/a1aa/image/8d88de38-3a5c-4519-f9b5-544a7e905cd8.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Product Title
              const Text(
                'Orange',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 12),

              // Rating and Info
              Row(
                children: [
                  Icon(Icons.star, color: primaryColor, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '4.6 (567 reviews)',
                    style: TextStyle(
                      color: textSecondary,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.access_time, color: textSecondary, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '10 min',
                    style: TextStyle(
                      color: textSecondary,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.local_fire_department, color: textSecondary, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '32 kcal',
                    style: TextStyle(
                      color: textSecondary,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Product Description
              const Text(
                'Product Description',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mus dignissim duis sed eget sit auctor fringilla. Cras laoreet tellus vulputate at. Vitae sit consectetur eleifend cursus. Sem luctus vel libero, donec ',
                style: TextStyle(
                  color: textSecondary,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Read more',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border(top: BorderSide(color: cardColor, width: 1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    color: textSecondary,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  '\$9.99 /kg',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: backgroundColor,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              child: const Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
