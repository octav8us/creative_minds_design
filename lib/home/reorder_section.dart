import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReorderSection extends StatelessWidget {
  const ReorderSection({
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
            buildReorderItem(
              context,
              restaurantLogoPath: 'assets/restaurant_logo_first.png',
              restaurantName: AppLocalizations.of(context)!.hendiResturant,
              mealName: AppLocalizations.of(context)!.familyMeal,
            ),
            buildReorderItem(
              context,
              restaurantLogoPath: 'assets/restaurant_logo_second.png',
              restaurantName: AppLocalizations.of(context)!.fastDelivery,
              mealName: AppLocalizations.of(context)!.alsalamMarket,
            ),
            buildReorderItem(
              context,
              restaurantLogoPath: 'assets/restaurant_logo_first.png',
              restaurantName: AppLocalizations.of(context)!.hendiResturant,
              mealName: AppLocalizations.of(context)!.familyMeal,
            ),
          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////

  Widget buildReorderItem(
    BuildContext context, {
    required String restaurantLogoPath,
    required String restaurantName,
    required String mealName,
  }) {
    return SizedBox(
      width: deviceWidth * .6,
      height: deviceHeight * .2,
      child: Card(
        elevation: 0,
        child: Stack(
          children: [
            Positioned(
              right: deviceWidth * .05,
              top: deviceWidth * .05,
              child: Image.asset(
                restaurantLogoPath,
                fit: BoxFit.fill,
                width: deviceWidth * .1,
                height: deviceWidth * .1,
              ),
            ),
            Positioned(
              top: deviceWidth * .05,
              right: deviceWidth * .2,
              child: Text(
                restaurantName,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Positioned(
              top: deviceWidth * .125,
              right: deviceWidth * .2,
              child: Text(
                mealName,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ),
            Positioned(
              top: deviceWidth * .2,
              right: deviceWidth * .2,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/reorder_arrow.png',
                      fit: BoxFit.fitWidth,
                      width: deviceWidth * .05,
                      height: deviceWidth * .05,
                    ),
                    color: Color(0xff007A7B),
                  ),
                  Text(
                    AppLocalizations.of(context)!.reorder,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xff007A7B),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
