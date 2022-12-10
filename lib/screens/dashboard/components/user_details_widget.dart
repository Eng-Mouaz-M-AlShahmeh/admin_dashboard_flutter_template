/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/screens/dashboard/components/calendart_widget.dart';
import 'package:admin_dashboard_template/screens/dashboard/components/charts.dart';
import 'package:admin_dashboard_template/screens/dashboard/components/user_details_mini_card.dart';
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CalendarWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "تفاصيل الموظف",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(child: Chart()),
              ],
            ),
          ),
          const UserDetailsMiniCard(
            color: Color(0xff0293ee),
            title: "مقابلة تقنية",
            amountOfFiles: "%28.3",
            numberOfIncrease: 1328,
          ),
          const UserDetailsMiniCard(
            color: Color(0xfff8b250),
            title: "مقابلة شؤون موظفين",
            amountOfFiles: "%16.7",
            numberOfIncrease: 622,
          ),
          const UserDetailsMiniCard(
            color: Color(0xff845bef),
            title: "مقابلة نهائية",
            amountOfFiles: "%22.4",
            numberOfIncrease: 954,
          ),
          const UserDetailsMiniCard(
            color: Color(0xff13d38e),
            title: "مرفوض",
            amountOfFiles: "%2.3",
            numberOfIncrease: 140,
          ),
        ],
      ),
    );
  }
}
