import 'package:flutter/material.dart';
import '../models/flyer.dart';
import '../data/dummy_data.dart';
import '../widgets/flyer_card.dart';
import '../widgets/category_chip.dart';
import '../widgets/bottom_nav_bar.dart';
import 'flyer_details_screen.dart';
import 'create_posting_screen.dart';

class LocalFlyersFeedScreen extends StatefulWidget {
  const LocalFlyersFeedScreen({super.key});

  @override
  State<LocalFlyersFeedScreen> createState() => _LocalFlyersFeedScreenState();
}

class _LocalFlyersFeedScreenState extends State<LocalFlyersFeedScreen> {
  int _currentNavIndex = 0;
  String _selectedCategory = 'All';
  final TextEditingController _searchController = TextEditingController();

  List<Flyer> get _filteredFlyers {
    if (_selectedCategory == 'All') {
      return dummyFlyers;
    }
    return dummyFlyers
        .where((flyer) => flyer.category == _selectedCategory)
        .toList();
  }

  void _onNavTap(int index) {
    setState(() {
      _currentNavIndex = index;
    });

    // Navigate to Create Posting Screen when Deals tab is tapped (index 2)
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CreatePostingScreen()),
      ).then((_) {
        // Reset to Feed tab after returning
        setState(() {
          _currentNavIndex = 0;
        });
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flyers Friday',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Bar
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search flyers...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),

          // Category Tabs
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return CategoryChip(
                    label: category,
                    isSelected: _selectedCategory == category,
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),

          // Flyers List
          Expanded(
            child: _filteredFlyers.isEmpty
                ? const Center(
                    child: Text(
                      'No flyers available',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: _filteredFlyers.length,
                    itemBuilder: (context, index) {
                      final flyer = _filteredFlyers[index];
                      return FlyerCard(
                        flyer: flyer,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FlyerDetailsScreen(flyer: flyer),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: _onNavTap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreatePostingScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
