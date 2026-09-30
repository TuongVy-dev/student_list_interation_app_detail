import 'package:flutter/material.dart';
import 'package:student_list_interation_app/models/student.dart';

class StudentDetailScreens extends StatelessWidget {
    final Student student;

    StudentDetailScreens({
        Key? key,
        required this.student
    }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Student Detail"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                        student.name,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    const SizedBox(height: 16,),
                    Text("Student ID: ${student.id}"),
                    const SizedBox(height: 8,),
                    Text("Email: ${student.email}"),
                    const SizedBox(height: 8,),
                    Text("Major: ${student.major}"),
                ],
            ),
        ),
    );
  }
}