import 'package:flutter/material.dart';
import 'package:simple_responsive_ui/const/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? mobileBody;
  final Widget? desktopBody;

  const ResponsiveLayout({super.key, this.mobileBody, this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody!;
      } else {
        return desktopBody!;
      }
    });
  }
}
