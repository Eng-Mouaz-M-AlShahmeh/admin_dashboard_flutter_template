/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/material.dart';

Color getRoleColor(String? role) {
  if (role == "طبيب") {
    return Colors.green;
  } else if (role == "معماري برمجيات") {
    return Colors.red;
  } else if (role == "مهندس برمجيات") {
    return Colors.blueAccent;
  } else if (role == "معماري حلول") {
    return Colors.amberAccent;
  } else if (role == "مدير مشروع") {
    return Colors.cyanAccent;
  } else if (role == "محلل أعمال") {
    return Colors.deepPurpleAccent;
  } else if (role == "مصمم واجهات وتجربة مستخدم") {
    return Colors.indigoAccent;
  }
  return Colors.black38;
}
