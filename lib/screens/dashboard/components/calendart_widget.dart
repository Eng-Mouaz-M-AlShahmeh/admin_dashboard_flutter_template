/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/core/models/data.dart';
import 'package:admin_dashboard_template/screens/dashboard/components/calendar_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  CalendarWidgetState createState() => CalendarWidgetState();
}

class CalendarWidgetState extends State<CalendarWidget> {
  List<CalendarData> _selectedDate = [];

  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  List<CalendarData> _eventLoader(DateTime date) {
    return calendarData
        .where((element) => isSameDay(date, element.date))
        .toList();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _selectedDate = calendarData
            .where((element) => isSameDay(selectedDay, element.date))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat("MMM, yyyy").format(_focusedDay),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month - 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      color: greenColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // print(_focusedDay);
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month + 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: greenColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TableCalendar<CalendarData>(
              selectedDayPredicate: (day) => isSameDay(_focusedDay, day),
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2018),
              lastDay: DateTime.utc(2025),
              headerVisible: false,
              onDaySelected: _onDaySelected,
              onFormatChanged: (result) {},
              daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) {
                  return DateFormat("EEE").format(date).toUpperCase();
                },
                weekendStyle: const TextStyle(fontWeight: FontWeight.bold),
                weekdayStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPageChanged: (day) {
                _focusedDay = day;
                setState(() {});
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: greenColor,
                  shape: BoxShape.circle,
                ),
                markerDecoration: BoxDecoration(
                  color: greenColor,
                  shape: BoxShape.circle,
                ),
              ),
              eventLoader: _eventLoader),
          const SizedBox(
            height: 8,
          ),
          CalendartList(datas: _selectedDate),
        ],
      ),
    );
  }
}
