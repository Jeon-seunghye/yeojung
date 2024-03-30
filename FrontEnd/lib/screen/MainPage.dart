import 'package:flutter/material.dart';
import 'package:front/components/mains/AlertList.dart';
import 'package:front/components/mains/MainInfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/components/mains/MainPastTravel.dart';
import 'package:front/components/mains/MainNowTravel.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import '../entities/Group.dart';
import 'package:front/repository/api/ApiGroup.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Group> groups = [];

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchGroups();
  }

  void fetchGroups() async {
    setState(() {
      isLoading = true;
    });
    final groupsJson = await getGroupList();
    if (groupsJson != null && groupsJson.data is List) {
      setState(() {
        groups = (groupsJson.data as List)
            .map((item) => Group.fromJson(item))
            .toList();
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      print("그룹 데이터를 불러오는 데 실패했습니다.");
    }
  }
  // void _launchURL() async {
  //   final Uri _url = Uri.parse('yeojung://example.com');
  //   if (await canLaunchUrl(_url)) {
  //     await launchUrl(_url);
  //   } else {
  //     throw 'Could not launch $_url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
        ),
        body: Column(children: [
          Container(
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyInfoMain(),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: false, // 모달창이 전체 화면을 차지하도록 설정
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height, // 전체 화면 높이 설정
                          child: AlertList(), // 여기에는 모달창으로 표시하고자 하는 위젯을 넣습니다.
                        );
                      },
                    );
                  },
                ),

              ],
            ),
          ),

          isLoading?
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20.h),
                Text("그룹을 불러오고 있습니다"),
              ],
            ),
          ) :
            Expanded(
              child: NowTravelList(groups: groups),
            ),
            // Expanded(child: ElevatedButton(
            //   onPressed: _launchURL,
            //   child: Text('Open yeojung://example.com'),
            // ),),
            Expanded(
              child: PastTravelList(groups: groups),
            ),
          // ],
        ]
        )
    );
  }
}
