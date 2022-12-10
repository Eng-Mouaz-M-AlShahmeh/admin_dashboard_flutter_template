/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/core/models/data.dart';
import 'package:admin_dashboard_template/core/utils/colorful_tag.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';

class CalendarItem extends StatelessWidget {
  final CalendarData calendarItemData;

  const CalendarItem({Key? key, required this.calendarItemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextAvatar(
                  text: calendarItemData.name,
                  size: 50,
                  backgroundColor: Colors.white,
                  textColor: Colors.white,
                  fontSize: 14,
                  upperCase: true,
                  numberLetters: 1,
                  shape: Shape.Rectangle,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        calendarItemData.name,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: getRoleColor(calendarItemData.position)
                              .withOpacity(.2),
                          border: Border.all(
                            color: getRoleColor(calendarItemData.position),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        child: Text(
                          calendarItemData.position,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          _Date(date: calendarItemData.getDate())
        ],
      ),
    );
  }
}

class _Date extends StatelessWidget {
  final String date;

  const _Date({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: greenColor.withOpacity(0.5),
        ),
      ),
      child: Text(
        date,
        style:
            const TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
      ),
    );
  }
}
