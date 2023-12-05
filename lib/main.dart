import 'package:abc_money_diary/repository/sql_database.dart';
import 'package:abc_money_diary/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SqlDataBase();
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

//가계부 index를 임의로 정해주기 위해
int diaryIndexId = 1;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KR')
      ],

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          dragHandleColor: Colors.orange,
          dragHandleSize: Size(50, 5),

        ),

      ),
      home: HomeScreen(),
    );
  }
}
