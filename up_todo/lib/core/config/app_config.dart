import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:up_todo/injection.dart';

import '../../firebase_options.dart';

final class AppConfig {
  static Future<void> initial() async {
    WidgetsFlutterBinding.ensureInitialized();
    //Get it injection
    setUp();

    //Firebase configure
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
  }
}
