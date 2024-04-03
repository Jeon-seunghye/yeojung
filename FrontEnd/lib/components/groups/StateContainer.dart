import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/const/colors/Colors.dart';

class StateContainer extends StatelessWidget {
  final bool groupState;

  const StateContainer({Key? key, required this.groupState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: TRAVELING,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        groupState ? '정산중' : '여행중',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
