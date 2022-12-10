/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/core/utils/colorful_tag.dart';
import 'package:admin_dashboard_template/models/recent_user_model.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({
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
          Text(
            "آخر المرشحين",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: defaultPadding,
                    columns: [
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 13,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("اسم المستخدم")),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 13,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("المنصب الوظيفي")),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 13,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("الايميل")),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 13,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("تاريخ التسجيل")),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("الحالة")),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: MediaQuery.of(context).size.width / 13,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(child: Text("اجراء")),
                            ],
                          ),
                        ),
                      ),
                    ],
                    rows: List.generate(
                      recentUsers.length,
                      (index) => recentUserDataRow(recentUsers[index], context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentUserDataRow(RecentUser userInfo, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        SizedBox(
          width: MediaQuery.of(context).size.width / 13,
          child: Row(
            children: [
              TextAvatar(
                size: 35,
                backgroundColor: Colors.white,
                textColor: Colors.white,
                fontSize: 14,
                upperCase: true,
                numberLetters: 1,
                shape: Shape.Rectangle,
                text: userInfo.name!,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text(
                    userInfo.name!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      DataCell(SizedBox(
        width: MediaQuery.of(context).size.width / 13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: getRoleColor(userInfo.role).withOpacity(.2),
                    border: Border.all(color: getRoleColor(userInfo.role)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0) //
                        ),
                  ),
                  child: Text(userInfo.role!)),
            ),
          ],
        ),
      )),
      DataCell(
        SizedBox(
          width: MediaQuery.of(context).size.width / 13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(userInfo.email!),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: MediaQuery.of(context).size.width / 13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(userInfo.date!),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: MediaQuery.of(context).size.width / 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(userInfo.posts!),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: MediaQuery.of(context).size.width / 13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  child: const Text('عرض', style: TextStyle(color: greenColor)),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                child: TextButton(
                  child:
                      const Text("حذف", style: TextStyle(color: Colors.redAccent)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                              title: Center(
                                child: Column(
                                  children: const [
                                    Icon(Icons.warning_outlined,
                                        size: 36, color: Colors.red),
                                    SizedBox(height: 20),
                                    Text("تأكيد الحذف"),
                                  ],
                                ),
                              ),
                              content: Container(
                                color: secondaryColor,
                                height: 70,
                                child: Column(
                                  children: [
                                    Text(
                                        "هل أنت متأكد أنك تريد حذف '${userInfo.name}'؟"),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                            icon: const Icon(
                                              Icons.close,
                                              size: 14,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            label: const Text("إلغاء")),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        ElevatedButton.icon(
                                            icon: const Icon(
                                              Icons.delete,
                                              size: 14,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red),
                                            onPressed: () {},
                                            label: const Text("حذف"))
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        });
                  },
                  // Delete
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
