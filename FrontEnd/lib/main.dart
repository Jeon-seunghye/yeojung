import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/components/selectbank/SelectBank.dart';
import 'package:provider/provider.dart';
import 'package:front/screen/HomeScreen.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';
import 'package:front/screen/LogIn.dart';
import 'package:front/routes.dart';
import "package:front/providers/store.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(
    nativeAppKey: '67ca4770ad20679139010583e0a57684',
    javaScriptAppKey: '506a7e7288e569efa8b05d06206ac60a',
  );
  await UserManager().loadUserInfo();

  print("키 해시: " + await KakaoSdk.origin);

  runApp(
    ChangeNotifierProvider(
      create: (context) => UserManager(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.routes,
        home: Consumer<UserManager>(
          builder: (context, userManager, child) {
            return userManager.isLogin ? HomeScreen() : Login();
          },
        ),
      ),
    );
  }
}
