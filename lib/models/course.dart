import 'package:flutter/material.dart';

class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(
    this.author,
    this.authorImg,
    this.title,
    this.imageUrl,
  );

  static List<Course> generateCourse() {
    return [
      Course('Luna Madrick', 'assets/icons/avatar01.png', 'Plant',
          'assets/images/course01.png'),
      Course('Daniel Dia', 'assets/icons/avatar02.png', 'Mushroom',
          'assets/images/course02.png'),
    ];
  }
}
