import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../entities/Group.dart';
import 'package:front/const/colors/Colors.dart';

class MainNowTravelCard extends StatelessWidget {
  final Group group;
  final VoidCallback onTap;
  final bool isCenter;

  const MainNowTravelCard({Key? key, required this.group, required this.onTap, required this.isCenter,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = isCenter ? 20.sp : 15.sp;
    double themeSize = isCenter ? 30.sp : 25.sp;
    double subFontSize = isCenter ? 10.sp : 6.sp;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Card 내부 여백 조절
          tileColor: Colors.white,
          onTap: onTap,
          title: Row(
            children: [
              Icon(Icons.arrow_circle_right_rounded,
                color: BUTTON_COLOR,),
              SizedBox(
                width: 6.w,
              ),
              Text(
                group.groupName.length > 5 ? '${group.groupName.substring(0, 4)}..' : group.groupName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize,
                ),
              ),
            ],
          ),

          subtitle: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  group.theme.length > 4 ? '${group.theme.substring(0, 4)}..' : group.theme,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: themeSize,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      group.startDate,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: subFontSize,
                      ),
                    ),
                    Text(
                      '~',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: subFontSize,
                      ),
                    ),
                    Text(
                      group.endDate,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: subFontSize,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
