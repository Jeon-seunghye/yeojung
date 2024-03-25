import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/components/addreceipt/ShowBeforeOcr.dart';
import 'package:front/repository/api/ApiReceipt.dart';
import '../../const/colors/Colors.dart';
import '../../entities/Receipt.dart';

class AddReceipt extends StatefulWidget {
  const AddReceipt({super.key});

  @override
  State<AddReceipt> createState() => _AddReceiptState();
}

class _AddReceiptState extends State<AddReceipt> {
  List<Receipt>? receiptData;
  bool isLoading = false;
  bool allReceiptsSaved = false;

  // 영수증 post 요청
  void sendReceiptData() async {
    if (receiptData == null || receiptData!.isEmpty) return;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("영수증 등록"),
          content: Text("영수증을 등록하시겠어요?"),
          actions: <Widget>[
            TextButton(
              child: Text("아니요"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("예"),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                // final res = await postYjReceipt(receiptData!);
                // print("1111111111: ${res}");

              },
            ),
          ],
        );
      },
    );
  }

  // 모두 저장을 했으면 "추가"버튼 활성화
  void updateReceiptSavedState(bool allSaved) {
    setState(() {
      allReceiptsSaved = allSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "영수증 등록",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => sendReceiptData(),
            child: Text(
              "추가",
              style: TextStyle(
                color: receiptData != null && receiptData!.isNotEmpty ? TEXT_COLOR : Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),

          // 더미데이터 추가하기!!!!!!!
          TextButton(
            onPressed: () => postReceiptFakeData(receiptData!),
            child: Text(
              "영수증 정보 받아~느~~",
              style: TextStyle(
                color: receiptData != null && receiptData!.isNotEmpty ? TEXT_COLOR : Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.w, 30.h, 30.w, 50.h),
        child: Column(
          children: [
            EasyRichText(
              "영수증은 한번에\n최대 10장까지 등록 가능합니다.",
              defaultStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                height: 2.5.h,
                letterSpacing: 1.0.w,
              ),
              patternList: [
                EasyRichTextPattern(
                  targetString: "최대 10장",
                  style: TextStyle(color: TEXT_COLOR),
                ),
              ],
              textAlign: TextAlign.center,
            ),
            isLoading
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ShowBeforeOcr(
                    onReceiptsUpdated: (updatedReceipts) {
                      setState(() {
                        receiptData = updatedReceipts;
                      });
                    },
                  )),
          ],
        ),
      ),
    );
  }
}
