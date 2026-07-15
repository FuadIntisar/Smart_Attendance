import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController sectionController = TextEditingController();

  @override
  void dispose() {
    studentIdController.dispose();
    courseController.dispose();
    sectionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mark Attendance"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student ID",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: studentIdController,
              keyboardType:TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Student ID",
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Course Code",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: courseController,
              decoration: const InputDecoration(
                hintText: "Enter Course Code",
                prefixIcon: Icon(Icons.book),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Section",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: sectionController,
              decoration: const InputDecoration(
                hintText: "Enter Section",
                prefixIcon: Icon(Icons.groups),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (studentIdController.text.isEmpty ||
                      courseController.text.isEmpty ||
                      sectionController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please fill all fields")),
                    );
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Attendance Marked Successfully"),
                      backgroundColor: Colors.green,
                    ),
                  );

                  debugPrint(studentIdController.text);
                  debugPrint(courseController.text);
                  debugPrint(sectionController.text);

                  studentIdController.clear();
                  courseController.clear();
                  sectionController.clear();
                },
                child: const Text("Mark Attendance"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  studentIdController.clear();
                  courseController.clear();
                  sectionController.clear();
                },
                child: const Text("Reset"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
