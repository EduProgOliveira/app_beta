import 'package:flutter/material.dart';

import 'core/ui/styles/theme_config.dart';
import 'routes.dart';

class MusicosOnlineApp extends StatelessWidget {
  const MusicosOnlineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConfig.theme,
      routes: Routes.routes,
    );
  }
}
