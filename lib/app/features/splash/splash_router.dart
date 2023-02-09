import 'package:flutter/material.dart';
import 'package:musicos_online/app/features/splash/splash_controller.dart';
import 'package:provider/provider.dart';
import 'splash_page.dart';

class SplashRouter {
  SplashRouter._();

  static String router = "/";

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => SplashController(),
          ),
        ],
        child: const SplashPage(),
      );
}
