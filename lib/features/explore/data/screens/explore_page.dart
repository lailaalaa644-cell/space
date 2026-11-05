import 'package:flutter/material.dart';
import 'package:space/core/app_color.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/global_components/buttons/explore_button.dart';
import 'package:space/features/explore/data/models/planet_model.dart';
import 'package:space/features/information/information_page.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int index = 0;
  late PageController controller;
  @override
  void initState() {
    controller = PageController(initialPage: index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.imgs.rectangle4.image(),
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.black, AppColors.black.withAlpha(0)],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SafeArea(
              child: Column(
                spacing: 28,
                children: [
                  Text(
                    "Explore",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Align(
                    alignment: .topStart,
                    child: Text(
                      "Which planet\nwould you like to explore?",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
   
                  SizedBox(
                    height: 350,
                    child: PageView.builder(
                      itemCount: planets.length,
                      onPageChanged: (pageIndex) {
                        setState(() {
                          index = pageIndex;
                        });
                      },
                      controller: controller,
                    
                      itemBuilder: (context, pageIndex) {
                        return planets[pageIndex].image;
                      },
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.previousPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.bounceInOut,
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.red,
                          child: Assets.icons.arrow3.image(),
                        ),
                      ),
                      Spacer(),
                      Text(
                        planets[index].name,

                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          controller.nextPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.bounceInOut,
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.red,
                          child: Assets.icons.arrow1.svg(),
                        ),
                      ),
                    ],
                  ),
                  ExploreButton(
                    text: "Explore ${planets[index].name}",
                    onTap: () {
                      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InformationPage(
          planet: planets[index], 
        ),
      ),
    );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
