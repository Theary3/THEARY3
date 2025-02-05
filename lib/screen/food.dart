import 'package:flutter/material.dart';
import '../../images/images.dart';// Replace with the actual path to your FastFoodScreen
import 'package:flutter/material.dart';
import '../images/images.dart';

class FoodCategoryScreen extends StatelessWidget {
   final List<Map<String, dynamic>> foodItems = [
    {
      'image': AppImages.koreanFood,
      'title': 'Yummy Topoki',
      'rating': 4.5,
      'price': 12.99,
      'tags': ['Spicy 🌶️', 'Vegetarian', 'Popular'],
    },
    {
      'image': AppImages.burgar,
      'title': 'Delicious Burger',
      'rating': 4.8,
      'price': 9.99,
      'tags': ['Cheesy', 'Popular'],
    },
    {
      'image': AppImages.pizza,
      'title': 'Italian Pizza',
      'rating': 4.7,
      'price': 14.99,
      'tags': ['Spicy 🌶️', 'Family Size'],
    },
    {
      'image': AppImages.specialOffer,
      'title': 'Special Fried Rice',
      'rating': 4.6,
      'price': 10.99,
      'tags': ['Spicy 🌶️', 'Vegetarian'],
    },
    {
      'image': AppImages.chrismas1,
      'title': 'Chrismast',
      'rating': 4.9,
      'price': 19.99,
      'tags': ['Deal', 'Popular'],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Hello Bopha,', 
                style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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

              // Horizontal Food Images
              Text('  ', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _FoodList(AppImages.buy1get2, 'Buy 1 Get 2',),
                    _FoodList(AppImages.FoodDelicious, 'Special', ),
                    _FoodList(AppImages.Cornfood, 'Street Food', ),
                    _FoodList(AppImages.healthy, 'Healthy', ),
                    _FoodList(AppImages.healthyfood, 'Special Offer', ),
                    _FoodList(AppImages.MilkTea, 'Milk Tea', ),
                    _FoodList(AppImages.Caramel, 'Special Popcorn', ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20),//height between best selling
              



              // Horizontal Food Images
              Text('Special Offers', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _FoodPromoCard(AppImages.burgar, 'Up to 70%',),
                    _FoodPromoCard(AppImages.buy1free1, 'Buy 1 get 2', ),
                    _FoodPromoCard(AppImages.specialOffer, 'Special Offer',),
                    _FoodPromoCard(AppImages.discount, 'Discount',),
                    _FoodPromoCard(AppImages.pizza, 'discount 30%', ),
                    _FoodPromoCard(AppImages.khmerFood, 'Khmer Special',),
                    _FoodPromoCard(AppImages.koreanFood, 'Korean Special',),
                    
                  ],
                ),
              ),
              SizedBox(height: 20),

              
                // Food Items with Details
              Text('Popular Items', style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final item = foodItems[index];
                  return _FoodListItem(
                    image: item['image'],
                    title: item['title'],
                    rating: item['rating'],
                    price: item['price'],
                    tags: item['tags'],
                  );
                },
              ),


              // Horizontal Food Images
              Text('Recommend for You', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _Ordered(AppImages.koreanFood, 'Yummy', width: 350,height:300),
                    _Ordered(AppImages.avocado, 'Healthy', width: 350,height:300),
                    _Ordered(AppImages.bbq, 'Special Offer', width: 350,height:300),
                    _Ordered(AppImages.healthyfood, 'Discount', width: 350,height:300),
                    _Ordered(AppImages.healthy, 'Special Dish', width: 350,height:300),
                    _Ordered(AppImages.FoodDelicious, 'Delicious', width: 350,height:300),
                    _Ordered(AppImages.Cornfood, 'Special Offer', width: 350,height:300),
                    _Ordered(AppImages.MilkTea, 'Special', width: 350,height:300),
                    
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


class _PromoIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  _PromoIcon(this.icon, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 30),
          ),
          SizedBox(height: 5),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _FoodPromoCard extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;

  // Add parameters to constructor
  _FoodPromoCard(this.image, this.title, {this.width = 150, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      margin: EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              image, 
              fit: BoxFit.cover, 
              width: width,
              height:height,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.black54,
                child: Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _Ordered extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;

  // Add parameters to constructor
  _Ordered(this.image, this.title, {this.width = 300, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      margin: EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              image, 
              fit: BoxFit.cover, 
              width: width,
              height:height,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoodListItem extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final double price;
  final List<String> tags;

  _FoodListItem({required this.image, required this.title, required this.rating, required this.price, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.star_rounded, color: Colors.amber, size: 20),
                      Text(rating.toString(), style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(width: 8),
                      Text('\$${price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: tags.map((tag) => _buildTag(tag, Colors.grey[200]!)).toList(),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color : Colors.orange),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}




class _FoodList extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;
  final double spacing; // Add spacing parameter

  // Add parameters to constructor
  _FoodList(this.image, this.title, {this.width = 80, this.height = 80,this.spacing = 10, // Default spacing
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      margin: EdgeInsets.only(right:15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              image, 
              fit: BoxFit.cover, 
              width: width,
              height:height,
              
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  Widget _buildTag(String text, Color bgColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black87)),
    );
  }

