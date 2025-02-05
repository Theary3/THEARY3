import 'package:flutter/material.dart';// Replace with the actual path to your FastFoodScreen

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildTopMenu(),
        backgroundColor: Colors.blue,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomAppBar(context),
    );
  }
class
  Widget _buildBody() {
    return _buildMainListView();
  }

  Widget _buildMainListView() {
    return ListView(
      padding: EdgeInsets.all(10),
      physics: BouncingScrollPhysics(),
      children: [
        Text("ប្រាសាទអង្គរវត្ត"),
        _buildFoodStoryListView(foodList, 200, 200),
        Text("ខេត្តសៀមរាប"),
        _buildFoodStoryListView(foodList2, 300, 250),
        Text("ខេត្តបាត់ដំបង"),
        _buildFoodStoryListView(foodList, 250, 300),
        Text("ប្រាសាទតាព្រហ្ម"),
        _buildFoodStoryListView(foodList2, 200, 180),
        Text("ខេត្តមណ្ឌលគិរី"),
        _buildFoodStoryListView(foodList, 180, 200),
      ],
    );
  }

  Widget _buildFoodStoryListView(List<String> items, double h, double w) {
    return Container(
      height: h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: w,
            padding: const EdgeInsets.only(bottom: 10, top: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(items[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }

  List<String> foodList = [
    "https://theworldtravelguy.com/wp-content/uploads/2019/06/DSCF6235-3.jpg",
    "https://www.greeneratravel.com/userfiles/850bousrawaterfall.jpg",
    "https://tourismcambodia.org/storage/uploads/contents/entryform/1549964136-898-Bayon-Temple-Reflection-at-Sunrise-lores.jpg",
    "https://meatophumknhom.wordpress.com/wp-content/uploads/2012/11/302110_415421255177668_15835195_n.jpg",
    "https://www.asiakingtravel.com/cuploads/files/Cambodia/Angkor%20Complex/Ta%20Prohm%20Temple/Knia%20tree%20zone.jpg",
  ];

  List<String> foodList2 = [
    "https://www.asiakingtravel.com/cuploads/files/Cambodia/Angkor%20Complex/Ta%20Prohm%20Temple/Knia%20tree%20zone.jpg",
    "https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2023/11/13184435/Angkor-Wat-at-sunrise-Sakdawut-Tangtongsap-Shutterstock-1600x900.jpg",
    "https://theworldtravelguy.com/wp-content/uploads/2019/06/DSCF6235-3.jpg",
    "https://www.greeneratravel.com/userfiles/850bousrawaterfall.jpg",
    "https://tourismcambodia.org/storage/uploads/contents/entryform/1549964136-898-Bayon-Temple-Reflection-at-Sunrise-lores.jpg",
    "https://meatophumknhom.wordpress.com/wp-content/uploads/2012/11/302110_415421255177668_15835195_n.jpg",
    "https://www.asiakingtravel.com/cuploads/files/Cambodia/Angkor%20Complex/Ta%20Prohm%20Temple/Knia%20tree%20zone.jpg",
  ];

  Widget _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.fastfood)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
    );
  }

  Widget _buildTopMenu() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "ANIMIXPLAY",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
