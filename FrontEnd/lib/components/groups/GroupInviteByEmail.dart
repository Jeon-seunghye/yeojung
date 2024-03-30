import 'package:flutter/material.dart';
import 'package:front/components/groups/GroupEmailFindField.dart'; // 수정된 import 경로
import '../../entities/GroupMember.dart';
import '../../entities/Group.dart';
import 'package:front/repository/api/ApiFcm.dart';

void groupInviteByEmail(BuildContext context, Group group, List<GroupMember> members) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final _emailController = TextEditingController();


      return AlertDialog(
        title: Text('인원 추가'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GroupEmailFindField(
                controller: _emailController,
                groupId: group.groupId,
                members: members,onInvite: (List<String> inviteMembers) async {
                final data = {
                  "inviteMembers": inviteMembers,
                  "groupId": group.groupId,
                  "notificationType": "INVITE",
                };
                final response = await sendNotiGroup(data);
                print(response); // 서버 응답을 확인합니다.
              },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('취소'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}