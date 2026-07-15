import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance History"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Card(
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text("2023831041"),
              subtitle: Text("swe 250 | section A"),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),

            const SizedBox(height: 10),
            
          Card(
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text("2023831080"),
              subtitle: Text("swe 250 | section B"),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
