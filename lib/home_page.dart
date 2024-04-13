import 'package:flutter/material.dart';
import 'package:simple_responsive_ui/responsive/desktop_body.dart';
import 'package:simple_responsive_ui/responsive/mobile_body.dart';
import 'package:simple_responsive_ui/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileBody(),
      desktopBody: DesktopBody(),
    );
  }
}
