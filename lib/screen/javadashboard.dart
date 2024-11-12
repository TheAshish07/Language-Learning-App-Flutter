import 'package:flutter/material.dart';
import 'package:projectapp/screen/dashboard.dart';

void main() {
  runApp(JavaCourseApp());
}

class JavaCourseApp extends StatelessWidget {
  const JavaCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CourseDetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            );
          },
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with fixed height and width to adjust to the screen size.
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/java_course.jpeg'), // Replace with your asset image
                  fit: BoxFit
                      .cover, // Ensures the image covers the entire container
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Title and description
            const Text(
              'Online Course\nin Java concept',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Our team partly took on job of Senior Java developer',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 16),
            // Stats (Likes, Views, etc.)
            const Row(
              children: [
                Icon(Icons.thumb_up, color: Colors.white),
                SizedBox(width: 4),
                Text(
                  '15456',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 16),
                Icon(Icons.bolt, color: Colors.white),
                SizedBox(width: 4),
                Text(
                  '2K+',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Course Information
            const Row(
              children: [
                Icon(Icons.play_circle_fill, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  '11 Hours Video of course on Java',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.article, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  '21 Articles',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            // Instructor Info
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/prof_peter.jpg'), // Replace with your asset image
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Prof. Peter Parker',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        _buildTag('JAVA'),
                        const SizedBox(width: 8),
                        _buildTag('OOPS'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
