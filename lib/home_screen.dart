// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_basics_dart/add_student_widget.dart';
import 'package:hive_basics_dart/db/model/functions/db_functions.dart';

import 'list_student_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AddStudentWidget(),
              Expanded(
                child: ListStudentWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
