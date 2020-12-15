import 'package:flutter/material.dart';
import 'app/home/home_page.dart';
import 'routing/app_router.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized(); //비동기 데이터 처리 시
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFF1E3C4),
        accentColor: const Color(0xFF4A433B),
        fontFamily: 'Nanum',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
    );
  }
}
