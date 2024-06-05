import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

//colorScheme
var KColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(225, 96, 59, 181));

//dark colorScheme
var KDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]).then((fn){
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: KDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: KDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: KDarkColorScheme.primaryContainer,
              foregroundColor: KDarkColorScheme.onPrimaryContainer),
        ),
      ),
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: KColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: KColorScheme.onPrimaryContainer,
            foregroundColor: KColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: KColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: KColorScheme.primaryContainer),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: KColorScheme.onSecondaryContainer,
                fontSize: 16),
          )),
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    ));
  // });

}
