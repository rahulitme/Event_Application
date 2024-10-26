// import 'package:flutter/material.dart';
// import '../services/auth_service.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   Future<void> _logout(BuildContext context) async {
//     try {
//       await AuthService().logout();
//       if (context.mounted) {
//         Navigator.pushReplacementNamed(context, '/login');
//       }
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error logging out: ${e.toString()}')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () => _logout(context),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.check_circle_outline,
//               size: 100,
//               color: Colors.green,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Successfully Logged In!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _logout(context),
//               child: const Text('Logout'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 2; // Start with middle item selected

//   // Pages for each tab
//   final List<Widget> _pages = [
//     const OrdersPage(),
//     const EventsPage(),
//     const HomePage(),
//     const SubmitLeadsPage(),
//     const OffersPage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () => _logout(context),
//           ),
//         ],
//       ),
//       body: Center(
//         child: _pages[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Orders',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.event),
//             label: 'Events',
//           ),
//           BottomNavigationBarItem(
//             icon: CircleAvatar(
//               backgroundColor: Colors.purple,
//               child: Icon(Icons.medical_services, color: Colors.white),
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_box),
//             label: 'Submit Leads',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer),
//             label: 'Offers',
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _logout(BuildContext context) async {
//     try {
//       // await AuthService().logout();
//       if (context.mounted) {
//         Navigator.pushReplacementNamed(context, '/login');
//       }
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error logging out: ${e.toString()}')),
//         );
//       }
//     }
//   }
// }

// // Placeholder pages for each tab
// class OrdersPage extends StatelessWidget {
//   const OrdersPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Orders Page'));
//   }
// }

// class EventsPage extends StatelessWidget {
//   const EventsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Events Page'));
//   }
// }

// class SubmitLeadsPage extends StatelessWidget {
//   const SubmitLeadsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Submit Leads Page'));
//   }
// }

// class OffersPage extends StatelessWidget {
//   const OffersPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Offers Page'));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:myapp/screens/eventpage.dart';
// import 'package:myapp/screens/offer_page.dart';
// import 'package:myapp/screens/submitlead_page.dart';
// import 'package:myapp/screens/orderpage.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // Pages for each tab
//   final List<Widget> _pages = [
//     const OffersPage(),
//     const EventsPage(),
//     const HomePage(), // This could be any main page, usually a dashboard.
//     const SubmitLeadsPage(),
//     const OrdersPage(),
//   ];

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       // If you want to stay on the current page, e.g., the middle icon
//       return;
//     }
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => _pages[index]),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () => _logout(context),
//           ),
//         ],
//       ),
//       body: const Center(
//         child: Text('Select a tab to navigate'),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Orders',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.event),
//             label: 'Events',
//           ),
//           BottomNavigationBarItem(
//             icon: CircleAvatar(
//               backgroundColor: Colors.purple,
//               child: Icon(Icons.medical_services, color: Colors.white),
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_box),
//             label: 'Submit Leads',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer),
//             label: 'Offers',
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _logout(BuildContext context) async {
//     try {
//       // await AuthService().logout();
//       if (context.mounted) {
//         Navigator.pushReplacementNamed(context, '/login');
//       }
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error logging out: ${e.toString()}')),
//         );
//       }
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/screens/eventpage.dart';
import 'package:myapp/screens/offer_page.dart';
import 'package:myapp/screens/submitlead_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const OrdersContent(),
    const EventsPage(),
    const Center(child: Text('Home')),
    const SubmitLeadsPage(),
    const OffersPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 
          ? _buildOrdersAppBar()
          : AppBar(
              title: const Text('Home'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () => _logout(context),
                ),
              ],
            ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.medical_services, color: Colors.white),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Submit Leads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildOrdersAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.yellow),
              SizedBox(width: 5),
              Text('Hyderabad'),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.star, color: Colors.yellow),
            label: const Text('Earn Rewards'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    try {
      // await AuthService().logout();
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error logging out: ${e.toString()}')),
        );
      }
    }
  }
}

class OrdersContent extends StatelessWidget {
  const OrdersContent({super.key});

  Widget _buildOptionCard(String title, IconData icon, Color iconColor) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 40),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Hello, Hyderabad!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildOptionCard("How It Works?", Icons.info, Colors.purple),
                _buildOptionCard("All Offers", Icons.local_offer, Colors.yellow),
                _buildOptionCard("Refer & Earn", Icons.group, Colors.yellow),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                const Text(
                  "Starts from 10 Guests Onwards!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Image.asset(
                  'assets/1.png',
                  height: 150,
                ),
                const SizedBox(height: 15),
                const Text(
                  "Bulk Food Delivery",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const Text(
                  "Order before 1 day",
                  style: TextStyle(color: Colors.orange),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Hassle-free food for your house parties & more!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFeature(Icons.no_meals, "No Cooking"),
                    _buildFeature(Icons.cleaning_services, "No Cleaning"),
                    _buildFeature(Icons.check_circle, "No Hassle"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Placeholder pages for each tab






