import 'package:flutter/material.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/global_components/buttons/explore_button.dart';
import 'package:space/features/explore/data/screens/explore_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.imgs.frame1.image(),
        Positioned(
          top: 300,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Explore\nThe \nUniverse",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ExploreButton(
              text: "Explore",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => ExplorePage(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
