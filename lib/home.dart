import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest'),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget GridView
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Widget GridView', style: TextStyle(fontSize: 18)),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.music_note, size: 48),
                      Text('Artist'),
                      Text('Song'),
                    ],
                  ),
                );
              }),
            ),

            // Widget ListView
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Widget ListView', style: TextStyle(fontSize: 18)),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.play_circle_filled),
                  ),
                  title: Text('Headline'),
                  subtitle: Text('Description Quiz auto irure dolor in reprehenderit in volup...'),
                  trailing: Text('Today - 23 min'),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Aku',
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