import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/detail/widget/course_module.dart';
import 'package:flutter/material.dart';

import '../../../models/module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModule();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The progress',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kFont,
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/icons/grid.png', width: 25),
                  SizedBox(width: 15),
                  Image.asset('assets/icons/list.png', width: 25),
                ],
              )
            ],
          ),
          SizedBox(height: 15),
          ...modulesList.map((e) => CourseModule(e)).toList()
          // CourseModule(modulesList[0])
        ],
      ),
    );
  }
}
