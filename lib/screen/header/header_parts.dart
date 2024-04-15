import 'package:flutter/material.dart';
import 'package:simple_responsive_ui/const/colors.dart';
import 'package:simple_responsive_ui/responsive/responsive_layout.dart';
import 'package:simple_responsive_ui/screen/header/header_menu.dart';

import 'profile_and_carts.dart';
import 'search_bar.dart';

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ResponsiveLayout(
                  mobileBody: Row(
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "PET SHOP",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      const ProfileAndCarts(),
                    ],
                  ),
                  desktopBody: const Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage("assets/pets_logo.png"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "PET SHOP",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                      Spacer(),
                      Spacer(),
                      WebMenu(),
                      Spacer(),
                      ProfileAndCarts()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MySearchBar(),
                const SizedBox(height: 50),
                ResponsiveLayout(
                  mobileBody: Column(
                    children: [
                      const Text(
                        "Unitl one has loved an animal,\na part of one's soul\nremains unawakened.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "assets/pets.png",
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      startShoppingButton(),
                    ],
                  ),
                  desktopBody: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Unitl one has loved an animal,\na part of one's soul\nremains unawakened.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            startShoppingButton(),
                          ],
                        ),
                        const Spacer(),
                        Expanded(
                          child: Image.asset(
                            "assets/pets.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container startShoppingButton() {
    return Container(
      height: 50,
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          "Start Shopping",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
