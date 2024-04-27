import 'package:flutter/material.dart';

class OnboardingItem {
  final String title;
  final String subtitle;
  final String imagePath;

  OnboardingItem({required this.title, required this.subtitle, required this.imagePath});
}

class OnboardViewPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const OnboardViewPage({super.key, required this.title, required this.subtitle, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20.0),
          Image.asset(imagePath),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
