import 'package:flutter/material.dart';
import '../images/images.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Hello Bopha,', 
            
                style: TextStyle(
                        
                        color:Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                
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
              SizedBox(height: 20),

              // Promo Icons
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _PromoIcon(Icons.local_offer, 'Offers', Colors.orange),
                    _PromoIcon(Icons.discount, 'Discount', Colors.green),
                    _PromoIcon(Icons.card_giftcard, 'Package', Colors.blue),
                    _PromoIcon(Icons.confirmation_number, 'Voucher', Colors.purple),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Horizontal Food Images
              Text('Special Offers', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _FoodPromoCard(AppImages.Milk, 'Milk',),
                    _FoodPromoCard(AppImages.Organic, 'Buy 1 get 2',),
                    _FoodPromoCard(AppImages.Grocerylong, 'Special Offer', width: 400,height:300),
                    _FoodPromoCard(AppImages.FreshMilk, 'FreshMilk',),
                    _FoodPromoCard(AppImages.FreshFruit, 'discount 30%',),
                    _FoodPromoCard(AppImages.FreshVegetable, 'FreshVegetable',  width: 400,height:300),
                    _FoodPromoCard(AppImages.Grocery, 'Grocery',),
                    
                  ],
                ),
              ),
              SizedBox(height: 20),



              // Horizontal Food Images
              Text('Recommend for You', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _Ordered(AppImages.koreanFood, 'Up to 70%', width: 350,height:300),
                    _Ordered(AppImages.avocado, 'Buy 1 get 2', width: 350,height:300),
                    _Ordered(AppImages.bbq, 'Special Offer', width: 350,height:300),
                    _Ordered(AppImages.healthyfood, 'Discount', width: 350,height:300),
                    _Ordered(AppImages.healthy, 'discount 30%', width: 350,height:300),
                    _Ordered(AppImages.Caramel, 'Khmer Special', width: 350,height:300),
                    _Ordered(AppImages.Midmonth, 'Thai Special', width: 350,height:300),
                    _Ordered(AppImages.MilkTea, 'Korean Special', width: 350,height:300),
                    
                  ],
                ),
              ),


              
              // Horizontal Food Images
              Text('Special Offers', 
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _FoodList(AppImages.FreshMilk, 'FreshMilk',),
                    _FoodList(AppImages.buy1free1, 'buy1free1',),
                    _FoodList(AppImages.MooNoodle, 'MooNoodle', ),
                    _FoodList(AppImages.discount, 'discount', ),
                    _FoodList(AppImages.pizza, 'pizza', ),
                    _FoodList(AppImages.FriedChicken, 'FriedChicken', ),
                    _FoodList(AppImages.koreanFood, 'Korean Special', ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20),//height between best selling
              
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
  _FoodPromoCard(this.image, this.title, {this.width = 200, this.height = 200});

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






class _FoodList extends StatelessWidget {
  final String image;
  final String title;
  final double width;
  final double height;
  final double spacing; // Add spacing parameter

  // Add parameters to constructor
  _FoodList(this.image, this.title, {this.width = 120, this.height = 120,this.spacing = 10, // Default spacing
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
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
