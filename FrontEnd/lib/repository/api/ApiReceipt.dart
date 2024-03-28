import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front/repository/commons.dart';

import '../../entities/Receipt.dart';

final api = ApiClient();

Future<Response> postReceiptImage(FormData formData) async {
  var dio = Dio();

  try {
    final res = await dio.post(
      dotenv.env['OCR_URL']!,
      data: formData,
      options: Options(
        headers: {
          'X-OCR-SECRET': dotenv.env['OCR_TOKEN']!,
        },
      ),
    );
    return res;
  } catch (err) {
    print("Error posting image: $err");
    throw Exception('Failed to post user info');
  }
}

Future<dynamic> postYjReceipt(groupId, data) async {
  try {
    final res = await api.post('/groups/${groupId}/payments/receipt', data: data);
    return res.data;
  } catch (err) {
    print(err);
    throw (err);
  }
}

// 영수증 더미데이터 추가하기~~
Future<dynamic> postReceiptFakeData(data) async {
  try {
    print(data);
    final res = await api.post('/account/dummyTransaction', data: data);
    print(res.data);
    return res.data;
  } catch (err) {
    print(err);
    throw (err);
  }
}
