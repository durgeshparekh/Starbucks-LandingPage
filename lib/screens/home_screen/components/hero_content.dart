import 'package:flutter/material.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/desktop_hero.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/mobile_hero.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/tablet_hero.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth >= 850) {
          return const DesktopHero();
        } else if (constraints.maxWidth >= 600) {
          return const TabletHero();
        }
        return const MobileHero();
      }),
    );
  }
}
