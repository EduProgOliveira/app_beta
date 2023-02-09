import 'package:flutter/material.dart';
import 'package:musicos_online/app/features/home/home_router.dart';

import 'features/splash/splash_router.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    SplashRouter.router: (context) => SplashRouter.page,
    HomeRouter.router: (context) => HomeRouter.page,
  };
}
