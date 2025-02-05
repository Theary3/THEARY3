import 'package:flutter/material.dart';
import '../../images/images.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              _buildProfileHeader(),
              SizedBox(height: 24),
              
              // Account Options
              _buildAccountOptions(),
              SizedBox(height: 24),
              
              // Perks Section
              _buildPerksSection(),
              SizedBox(height: 24),
              
              // General Section
              _buildGeneralSection(),
              SizedBox(height: 24),
              
              // Logout & Version
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar.png'), // Add your profile image
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              child: Text('View profile',
                  style: TextStyle(color: Colors.orange[700])),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAccountOptions() {
    return Column(
      children: [
        _buildListTile('Orders', Icons.shopping_bag_outlined),
        _buildListTile('Favourites', Icons.favorite_border),
        _buildListTile('Payments', Icons.credit_card),
        _buildListTile('Addresses', Icons.location_on_outlined),
      ],
    );
  }

  Widget _buildPerksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('More for you',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        _buildPerkItem('Vouchers', Icons.confirmation_number_outlined),
        _buildPerkItem('Invite friends', Icons.people_outline),
      ],
    );
  }

  Widget _buildGeneralSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('General',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        _buildListTile('Help center', Icons.help_outline),
        _buildListTile('business', Icons.business_center_outlined),
        _buildListTile('Terms & policies', Icons.description_outlined),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 16),
        TextButton(
          onPressed: () {},
          child: Text('Log out',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 16)),
        ),
      
      ],
    );
  }

  Widget _buildListTile(String title, IconData icon) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.black87),
      title: Text(title,
          style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.chevron_right,
          color: Colors.grey),
      onTap: () {},
    );
  }

  Widget _buildPerkItem(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange[700]),
          SizedBox(width: 16),
          Expanded(
            child: Text(title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ),
          Icon(Icons.chevron_right,
              color: Colors.grey),
        ],
      ),
    );
  }
}