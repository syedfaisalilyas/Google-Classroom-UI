import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 3, blurRadius: 7, offset: Offset(0, 3)),],
          ),
          child: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            title: Image.asset(
              'lib/assets/text.png',
              width: 220,
            ),
            actions: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('lib/assets/me.jpeg'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClassBox(
              classroomName: 'Programming Fundamentals',
              subheading: 'Section A',
              authorName: 'Faisal Ilyas',
              color: Color.fromARGB(255, 19, 142, 134),
            ),
            ClassBox(
              classroomName: 'Object Oriented Programming',
              subheading: 'Section B',
              authorName: 'John Doe',
              color: Color.fromARGB(255, 82, 3, 62),
            ),
            ClassBox(
              classroomName: 'Data Structures and Algorithms',
              subheading: 'Section C',
              authorName: 'Alice Johnson',
              color: Color.fromARGB(255, 153, 0, 51),
            ),
            ClassBox(
              classroomName: 'Database Management Systems',
              subheading: 'Section D',
              authorName: 'Robert Williams',
              color: Color.fromARGB(255, 255, 102, 102),
            ),
            ClassBox(
              classroomName: 'Operating Systems',
              subheading: 'Section E',
              authorName: 'Emily Brown',
              color: Color.fromARGB(255, 204, 204, 0),
            ),
            ClassBox(
              classroomName: 'Computer Networks',
              subheading: 'Section F',
              authorName: 'Michael Clark',
              color: Color.fromARGB(255, 51, 102, 153),
            ),
            ClassBox(
              classroomName: 'Software Engineering',
              subheading: 'Section G',
              authorName: 'Sarah Smith',
              color: Color.fromARGB(255, 255, 153, 51),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic to add a new class here
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        child: const Icon(Icons.add),
        elevation: 4,
        shape: const CircleBorder(),
      ),
    );
  }
}

class ClassBox extends StatelessWidget {
  final String classroomName;
  final String subheading;
  final String authorName;
  final Color color;

  const ClassBox({
    required this.classroomName,
    required this.subheading,
    required this.authorName,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: color.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Text(
            classroomName.length > 20
                ? '${classroomName.substring(0, 20)}...'
                : classroomName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subheading,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 33),
          Text(
            authorName,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
