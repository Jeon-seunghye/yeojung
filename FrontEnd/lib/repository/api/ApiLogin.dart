import 'package:dio/dio.dart';
import 'package:front/repository/commons.dart';

final api = ApiClient();

// 유저정보 post & JWT토큰 리턴
Future<Response> postUserInfo(data) async {
  try {
    final res = await api.post('/auth/login', data: data);
    return res;
  } catch (err) {
    print(err);
    throw Exception('Failed to post user info');
  }
}

// 싸피은행에서 회원정보 불러오기.
Future<Response> postMyData() async {
  try {
    final res = await api.post('/members/mydata/search');
    return res;
  } catch (err) {
    print(err);
    throw err;
  }
}

// 6자리 핀번호 post
Future<void> postPassWord(data) async {
  try {
    final res = await api.post('/members/pin', data: data);
    return res.data;
  } catch (err) {
    print(err);
  }
}

// 6자리 핀번호 확인(put)
Future<Response> putPassWord(data) async {
  try {
    final res = await api.put(
      '/members/pin',
      data: data,
      options: Options(
        validateStatus: (status) => true,
      ),
    );
    return res;
  } catch (err) {
    print(err);
    throw Exception('Failed to post user info');
  }
}

// FCM Token post
Future<void> postFcmToken(data) async {
  try {
    final res = await api.post('/members/fcmtoken', data: data);
    return res.data;
  } catch (err) {
    if (err is DioError) {
      if (err.response?.statusCode == 409) {
        print('이미 등록된 FCM 토큰입니다.');
      } else {
        print('Error Status Code: ${err.response?.statusCode}');
      }
    } else {
      print(err);
    }
  }
}

// 사용자가 선택한 은행과 연결된 계좌 목록 get
Future<Response> getBankInfo(String code) async {
  try {
    final res = await api.get('/account/list/${code}');
    return res;
  } catch (err) {
    print('err: $err');
    throw Exception('111111111111111');
  }
}

// 서비스에 등록된 주 거래계좌를 조회한다.
Future<Response> getMyPrimary() async {
  try {
    final res = await api.get('/members/account/primary');
    return res;
  } catch (err) {
    print('err: $err');
    throw Exception('Failed to get bank info');
  }
}

// 사용자가 선택한 은행과 연결된 계좌 목록 post
Future<void> postBankInfo(data) async {
  try {
    final res = await api.post('/bank/myAccount', data: data);
    return res.data;
  } catch (err) {
    print(err);
  }
}

// 로그아웃을 한다.
Future<void> postLogOut(data) async {
  try {
    final res = await api.post('/auth/logout', data: data);
    return res.data;
  } catch (err) {
    print(err);
  }
}
