import 'package:flutter/material.dart';
import 'package:simple_responsive_ui/model/model.dart';
import 'package:simple_responsive_ui/screen/body/body_parts.dart';
import 'package:simple_responsive_ui/screen/header/header_menu.dart';

import 'screen/header/header_parts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/pets_logo.png"),
              ),
            ),
            MobileMenu()
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderParts(),
            BodyParts(),
          ],
        ),
      ),
    );
  }
}
