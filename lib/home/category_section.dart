import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth * .95,
      height: deviceHeight * .3,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildCategoryItem(
              context,
              imagePath: 'assets/slider_first.png',
              title: AppLocalizations.of(context)!.fastDelivery,
            ),
            SizedBox(
              width: deviceWidth * .05,
            ),
            buildCategoryItem(
              context,
              imagePath: 'assets/slider_second.png',
              title: AppLocalizations.of(context)!.restaurants,
            ),
            SizedBox(
              width: deviceWidth * .05,
            ),
            buildCategoryItem(
              context,
              imagePath: 'assets/slider_third.png',
              title: AppLocalizations.of(context)!.grocery,
            ),
          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////

  Widget buildCategoryItem(BuildContext context,
      {required String imagePath, required String title}) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.fill,
          width: deviceWidth * .4,
          height: deviceHeight * .25,
        ),
        Positioned(
          bottom: 2,
          left: 0,
          child: Container(
            width: deviceWidth * .4,
            height: deviceHeight * .05,
            color: Colors.transparent,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontFamily: GoogleFonts.getFont("Almarai").fontFamily,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
