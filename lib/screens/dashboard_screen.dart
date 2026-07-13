import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.dashboard, size: 100, color: Colors.blue),

            const SizedBox(height: 20),

            const Text(
              "Welcome Student",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("Mark Attendance Clicked");
                },
                child: const Text("Mark Attendance"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("Attendance History Clicked");
                },
                child: const Text("Attendance History"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
