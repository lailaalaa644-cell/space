import 'package:flutter/material.dart';
import 'package:space/core/app_color.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/features/explore/data/models/planet_model.dart'
    show PlanetModel;

class InformationPage extends StatelessWidget {
  final PlanetModel planet;

  InformationPage({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: -55,
                child: Assets.imgs.rectangle4.image(height: 250, width: 400),
              ),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 36,
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: CircleAvatar(
                            backgroundColor: AppColors.red,
                            child: Assets.icons.arrow3.image(),
                          ),
                        ),
                      SizedBox(width: 100,),
                        Text(
                          planet.name,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    Text(
                      planet.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Center(child: SizedBox(height: 300, child: planet.image)),
                    
                    Column(
                      spacing: 10,
                      crossAxisAlignment: .start,
                      children: [
                        Text("About", style: Theme.of(context).textTheme.headlineSmall),
                         Text(
                          planet.about,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Distance from Sun (km) : ${planet.distanceFromSun}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Length of Day (hours)  : ${planet.lengthOfDay}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Orbital Period (Earth years)  : ${planet.orbitalPeriod}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Radius (km) : ${planet.radius}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Mass (kg) : ${planet.mass}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Gravity (m/s²) : ${planet.gravity}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text("Surface Area (km²) : ${planet.surfaceArea}",style: Theme.of(context).textTheme.titleSmall,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
