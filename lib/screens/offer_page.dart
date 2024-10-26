import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of offers
    final List<Map<String, String>> offers = [
      {
        'title': 'Taste of Traditions',
        'type': 'Bulk Food Delivery',
        'image': 'assets/t.jpg',
        'price': '₹299',
        'items': '8 Categories & 16 Items'
      },
      {
        'title': 'South Indian Breakfast',
        'type': 'Catering Service',
        'image': 'assets/south_indian.jpeg',
        'price': '₹219',
        'items': '4 Categories & 8 Items'
      },
      {
        'title': 'Classic Italian',
        'type': 'Gourmet Service',
        'image': 'assets/italian.jpeg',
        'price': '₹399',
        'items': '6 Categories & 12 Items'
      },
      {
        'title': 'Mexican Fiesta',
        'type': 'Party Catering',
        'image': 'assets/mexican.jpeg',
        'price': '₹349',
        'items': '5 Categories & 10 Items'
      },
      {
        'title': 'Asian Delights',
        'type': 'Exclusive Service',
        'image': 'assets/asian.jpeg',
        'price': '₹459',
        'items': '7 Categories & 14 Items'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Platter'),
      ),
      body: ListView.builder(
        itemCount: offers.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image with overlay and badge
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          offer['image']!,
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Popular',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offer['type']!,
                          style: const TextStyle(
                            color: Colors.purple,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          offer['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.group, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              'Min 10 - Max 1500',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'Starts at ${offer['price']}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              offer['items']!,
                              style: const TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigate to details or take other action
                              },
                              child: const Text(
                                'See all',
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
