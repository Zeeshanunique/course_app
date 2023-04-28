import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';
import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourse();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle("Top of the week", "View All"),
          Container(
            height: 300,
            child: ListView.separated(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (context, index) => CourseItem(courseList[index]),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 15,
                    )),
          ),
        ],
      ),
    );
  }
}
