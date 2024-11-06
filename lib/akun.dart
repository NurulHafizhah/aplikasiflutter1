import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person),
              ),
              title: Text('Nama Lengkap'),
              subtitle: Text('Asal Universitas'),
            ),
          ),
          ListTile(
            title: Text('Kelola Akun'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman kelola akun
            },
          ),
          ListTile(
            title: Text('Notifikasi'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman notifikasi
            },
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman privacy policy
            },
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman terms of service
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}