import 'package:flutter/material.dart';
import 'package:musicos_online/app/features/home/presenter/controllers/home_controller.dart';
import 'package:musicos_online/app/features/home/ui/home_page.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();

  static String router = '/home';

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => HomeController(),
          )
        ],
        child: const HomePage(),
      );
}
