import 'package:LongLaoshi/presentation/chat_chinese_screen/chat_chinese_dart.dart';
import 'package:LongLaoshi/presentation/flashcards/flashcards_japanese.dart';
import 'package:LongLaoshi/presentation/auth/login_screen.dart';
import 'package:LongLaoshi/presentation/auth/registro_screen.dart';
import 'package:LongLaoshi/home_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/inicio_screen/inicio_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String inicioScreen = '/inicio_screen';

  static const String chatScreen = '/chat_chinese_dart';

  static const String initialRoute = '/initialRoute';

  static const String flashcards = "/flashcards_japanese";

  static const String loginScreen = "/login_screen";

  static const String registroScreen = "/registro_screen";

  static const String homeScreen = "/home_screen";

  static Map<String, WidgetBuilder> routes = {
    inicioScreen: (context) => InicioScreen(),
    initialRoute: (context) => InicioScreen(),
    chatScreen: (context) => ChatScreen(),
    flashcards: (context) => FlashcardScreen(),
    loginScreen: (context) => LoginScreen(),
    registroScreen: (context) => RegistroScreen(),
    homeScreen: (context) => HomeScreen(),
  };
}