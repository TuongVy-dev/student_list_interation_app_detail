import 'package:flutter/material.dart';
import 'package:student_list_interation_app/screens/student_detail_screens.dart';

import '../models/student.dart';
import '../widgets/student_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // BƯỚC 3: Chuẩn bị danh sách sinh viên mẫu
  final List<Student> students = [
    Student(id: 'SV01', name: 'Nguyễn Văn A', email: 'a@student.edu',
    major: 'Computer Science',),
    Student(id: 'SV02', name: 'Trần Thị B', email: 'b@student.edu',
    major: 'Information Systems',),
  ];
  @override
  Widget build(BuildContext context) {
    // BƯỚC 4: Tạo Home Screen với Scaffold
    return Scaffold(
      appBar: AppBar(title: const Text('Student List'), centerTitle: true),
      // BƯỚC 5: Xây dựng ListView.builder
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          // BƯỚC 7: Kết nối StudentCard vào ListView
          return StudentCard(
            student: student,
            onSelect: () {
              // BƯỚC 9: Xử lý setState cho UI
              setState(() {
                student.isSelected = !student.isSelected;
              });
            },
            onOpenDetail: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (_) => StudentDetailScreens(student: student)));
            },
          );
        },
      ),
    );
  }
}
