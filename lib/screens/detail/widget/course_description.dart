import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Image.asset(
              course.authorImg,
              width: 20,
            ),
            SizedBox(width: 5),
            Text(
              course.author,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kFontLight,
              ),
            ),
            Icon(Icons.access_time_filled, size: 20, color: kAccent),
            SizedBox(width: 5),
            Text(
              '1h 35 min',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: kFont),
            ),
          ]),
          SizedBox(height: 15),
          Text(
            course.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
          ),
          SizedBox(height: 15),
          Text(
            'How we develop apeech and how it\nbecome such a powerful toll, let\'s see it',
            style: TextStyle(
                wordSpacing: 2,
                // fontWeight: FontWeight.bold,
                color: kFontLight,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
