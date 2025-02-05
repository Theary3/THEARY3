import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search food...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 20),
            Text(
              'Recent searches',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            RecentSearchItem(text: '   cake '),
            RecentSearchItem(text: '   burgar'),
            RecentSearchItem(text: '   kfc'),
            RecentSearchItem(text: '   krc'),
            RecentSearchItem(text: '   kfc burger buy 1 get 1'),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Popular searches in Restaurants',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            PopularSearchItem(text: '', subTexts: ['off', 'burger',  'kfc']),
            PopularSearchItem(text: '', subTexts: ['pizza hut']),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Popular searches in Shops',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            PopularSearchItem(text: '', subTexts: ['pizza company', 'milk']),
          ],
        ),
      ),
    );
  }
}

class RecentSearchItem extends StatelessWidget {
  final String text;

  RecentSearchItem({required this.text});

  @override
Widget build(BuildContext context) {
  return Row(
    children: [
      Icon(Icons.access_time), // Replacing checkbox with a time-related icon
      Text(text),
      Spacer(),
      Icon(Icons.close),
    ],
  );
}

}

class PopularSearchItem extends StatelessWidget {
  final String text;
  final List<String> subTexts;

  PopularSearchItem({required this.text, required this.subTexts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: subTexts.map((subText) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Chip(label: Text(subText)),
            );
          }).toList(),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
