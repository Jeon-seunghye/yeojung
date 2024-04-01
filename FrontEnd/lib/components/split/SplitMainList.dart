import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/entities/SplitMemberResponse.dart';
import 'package:intl/intl.dart';

import '../../const/colors/Colors.dart';
import 'SplitDetail.dart';

class SplitMainList extends StatefulWidget {
  final List<SplitMemberResponse> memberList;
  final int groupId;

  const SplitMainList({
    Key? key,
    required this.memberList, required this.groupId,
  }) : super(key: key);

  @override
  _SplitMainListState createState() => _SplitMainListState();
}

class _SplitMainListState extends State<SplitMainList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.memberList.length,
      itemBuilder: (context, index) {
        var member = widget.memberList[index];
        return Card(
          elevation: 0,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
              "${member.name}님께",
                style: TextStyle(fontSize: 20.sp),
              ),
              SizedBox(height: 8.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        SplitDetail(groupId: widget.groupId,
                          type: 'RECEIVE',
                          memberId: member.memberId,
                          memberName: member.name,)),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      color: RECIVE_ICON_COLOR,
                      size: 40,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "받을 금액",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    Spacer(),
                    Text(
                      "+${NumberFormat('#,###').format(member.receiveAmount)}원",
                      style: TextStyle(
                          fontSize: 18.sp, color: RECIVE_ICON_COLOR),
                    ),
                  ],
                ),),
              SizedBox(height: 8.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      SplitDetail(groupId: widget.groupId,
                        type: 'SEND',
                        memberId: member.memberId,
                        memberName: member.name,)),
                );
              },
              child:
              Row(
            children: [
              Icon(
                Icons.arrow_circle_left_rounded,
                color: SEND_ICON_COLOR,
                size: 40,
              ),
              SizedBox(width: 8.w),
              Text(
                "보낼 금액",
                style: TextStyle(fontSize: 20.sp),
              ),
              Spacer(),
              Text(
                "-${NumberFormat('#,###').format(member.sendAmount)}원",
                style: TextStyle(fontSize: 18.sp, color: SEND_ICON_COLOR),
              ),
            ],
          ),
            ),
          ],
        ),)
        ,
        );

      },
    );
  }
}
