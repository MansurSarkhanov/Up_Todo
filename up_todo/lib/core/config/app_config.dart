import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
  }
}
