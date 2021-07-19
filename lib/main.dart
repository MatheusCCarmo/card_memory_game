import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/pages/finish_game_page.dart';
import 'package:card_memory_game/pages/game_cards_page.dart';
import 'package:card_memory_game/pages/start_game_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => GameController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline2: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            headline3: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        initialRoute: '/start_game_page',
        routes: {
          '/start_game_page': (context) => StartGamePage(),
          '/game_cards_page': (context) => GameCardsPage(),
          '/finish_game_page': (context) => FinishGamePage(),
        },
      ),
    );
  }
}
