import 'package:flutter/material.dart';

import '../../const/colors.dart';

class PetsMoreServices extends StatelessWidget {
  const PetsMoreServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        petsServices(
            icon: Icons.discount_outlined,
            title: "30% Offer\nThis Month",
            onPressed: () {}),
        petsServices(
            icon: Icons.delivery_dining,
            title: "Free Shipping\n For Member",
            onPressed: () {}),
        petsServices(
            icon: Icons.precision_manufacturing_sharp,
            title: "Easy Online\n Purchase",
            onPressed: () {}),
        petsServices(
            icon: Icons.medical_services_outlined,
            title: "Animal Care\n Services",
            onPressed: () {}),
        petsServices(
            icon: Icons.shopping_cart, title: "Pets\nShopes", onPressed: () {}),
      ],
    );
  }

  Padding petsServices({onPressed, icon, title}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: onPressed,
        child: Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 45,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
