import 'package:flutter/material.dart';
import 'package:space/core/app_color.dart';
import 'package:space/core/gen/assets.gen.dart';

class ExploreButton extends StatelessWidget {
  ExploreButton({super.key, required this.text, required this.onTap});
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
    
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: AppColors.red,
          foregroundColor: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
        ),
        child: Row(
          children: [
            Text(
              text,
              textAlign: .start,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontFamily: "Inter"),
            ),
            Spacer(),
            Assets.icons.arrow1.svg(),
          ],
        ),
      ),
    );
  }
}
