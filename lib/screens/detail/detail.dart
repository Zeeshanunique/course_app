import 'package:course_app/screens/detail/widget/course_description.dart';
import 'package:course_app/screens/detail/widget/course_progress.dart';
import 'package:course_app/screens/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';

class DetailPage extends StatelessWidget {
  final Course course;

  const DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(course),
          CourseDescription(course),
          CourseProgress(),
        ],
      )),
    );
  }
}
