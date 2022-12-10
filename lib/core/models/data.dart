/* Developed by Eng Mouaz M AlShahmeh */
import 'package:intl/intl.dart';

class CalendarData {
  final String name;

  final DateTime date;
  final String position;
  final String rating;

  String getDate() {
    final formatter = DateFormat('kk:mm');

    return formatter.format(date);
  }

  CalendarData({
    required this.name,
    required this.date,
    required this.position,
    required this.rating,
  });
}

final List<CalendarData> calendarData = [
  CalendarData(
    name: 'Ahmed Said',
    date: DateTime.now().add(const Duration(days: -16, hours: 5)),
    position: "مهندس برمجيات",
    rating: '₽',
  ),
  CalendarData(
    name: 'Mohammed Adnan',
    date: DateTime.now().add(const Duration(days: -5, hours: 8)),
    position: "مطور",
    rating: '₽',
  ),
  CalendarData(
    name: 'Ali Faisal',
    date: DateTime.now().add(const Duration(days: -10, hours: 3)),
    position: "مهندس حلول",
    rating: '\$',
  ),
  CalendarData(
    name: 'Abdullah Qassem',
    date: DateTime.now().add(const Duration(days: 6, hours: 6)),
    position: "مدير مشروع",
    rating: '\$',
  ),
  CalendarData(
    name: 'Hani Sadeq',
    date: DateTime.now().add(const Duration(days: -18, hours: 9)),
    position: "مهندس خطوط",
    rating: '\$',
  ),
  CalendarData(
    name: 'Jamal Tafesh',
    date: DateTime.now().add(const Duration(days: -12, hours: 2)),
    position: "مصمم واجهات وتجربة مستخدم",
    rating: '\$',
  ),
  CalendarData(
    name: 'Nadem Sabbagh',
    date: DateTime.now().add(const Duration(days: -8, hours: 4)),
    position: "محلل أعمال",
    rating: '\$',
  ),
  CalendarData(
    name: 'Fahad Ghassan',
    date: DateTime.now().add(const Duration(days: -3, hours: 6)),
    position: "معماري برمجيات",
    rating: '₽',
  ),
  CalendarData(
    name: 'Saif Haider',
    date: DateTime.now().add(const Duration(days: -2, hours: 6)),
    position: "مدير مشروع",
    rating: '₽',
  ),
  CalendarData(
    name: 'Mahmoud Solaiman',
    date: DateTime.now().add(const Duration(days: -2, hours: 7)),
    position: "مهندس برمجيات",
    rating: '₽',
  ),
  CalendarData(
    name: 'Khaled AlHammad',
    date: DateTime.now().add(const Duration(days: -14, hours: 5)),
    position: "معماري حلول",
    rating: '₽',
  ),
];
