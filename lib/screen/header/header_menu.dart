import 'package:flutter/material.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        menuItem("Dogs"),
        menuItem("Cats"),
        menuItem("Pig"),
        menuItem("Birds"),
        menuItem("Fish"),
        menuItem("Cow")
      ],
    );
  }

  Padding menuItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MobileMenu extends StatelessWidget {
  const MobileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        menuItem("Dogs"),
        menuItem("Cats"),
        menuItem("Pig"),
        menuItem("Birds"),
        menuItem("Fish"),
        menuItem("Cow")
      ],
    );
  }

  Padding menuItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
