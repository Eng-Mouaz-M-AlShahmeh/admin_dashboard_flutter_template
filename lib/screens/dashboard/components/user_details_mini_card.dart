/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class UserDetailsMiniCard extends StatelessWidget {
  const UserDetailsMiniCard({
    Key? key,
    required this.title,
    required this.color,
    required this.amountOfFiles,
    required this.numberOfIncrease,
  }) : super(key: key);

  final Color color;
  final String title, amountOfFiles;
  final int numberOfIncrease;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 20,
              width: 20,
              child: Container(
                color: color,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numberOfIncrease",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: color))
        ],
      ),
    );
  }
}
