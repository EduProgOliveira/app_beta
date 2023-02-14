import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicos_online/app/core/helpers/size_extensions.dart';
import 'package:musicos_online/app/core/ui/base_state/base_state.dart';
import 'package:musicos_online/app/core/ui/styles/colors_app.dart';
import 'package:musicos_online/app/features/home/presenter/controllers/home_controller.dart';
import 'package:musicos_online/app/features/home/ui/widgets/home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppbar(),
        body: Stack(
          alignment: Alignment.center,
          children: [
            GridView.builder(
              itemCount: 10,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: context.percentHeight(.3),
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://bandzoogle.com/files/3713/bzblog-why-serious-musicians-still-need-to-be-making-albums-main.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            Positioned(
              bottom: 15,
              child: Container(
                width: context.percentWith(.9),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        print('object');
                      },
                      child: SvgPicture.asset(
                        'assets/icons/home-icon.svg',
                        color: context.colors.primary,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/chat-icon.svg'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/icons/notification-icon.svg'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/user-icon.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
