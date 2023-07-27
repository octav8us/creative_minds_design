import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MostOrderSection extends StatelessWidget {
  const MostOrderSection({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildMostOrderItem(
              context,
              imgPath: 'assets/restaurant_logo_first.png',
              restaurantName: AppLocalizations.of(context)!.hendiResturant,
              mealName: AppLocalizations.of(context)!.familyMeal,
            ),
            buildMostOrderItem(
              context,
              imgPath: 'assets/restaurant_logo_second.png',
              restaurantName: AppLocalizations.of(context)!.fastDelivery,
              mealName: AppLocalizations.of(context)!.alsalamMarket,
            ),
            buildMostOrderItem(
              context,
              imgPath: 'assets/restaurant_logo_first.png',
              restaurantName: AppLocalizations.of(context)!.hendiResturant,
              mealName: AppLocalizations.of(context)!.familyMeal,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMostOrderItem(BuildContext context,
      {required String imgPath, required restaurantName, required mealName}) {
    return Container(
      width: deviceWidth * .6,
      height: deviceHeight * .3,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Container(
                height: deviceHeight * .45,
                width: double.infinity,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Text(
                        mealName,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey[800],
                            ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          restaurantName,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.grey[800],
                                  ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //time
                          Row(
                            children: [
                              Text(
                                '45 min',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey[800],
                                    ),
                              ),
                              const Icon(
                                Icons.timer_outlined,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ],
                          ),

                          //rate
                          Row(
                            children: [
                              Text(
                                '4.5',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey[800],
                                    ),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),

                          // cost
                          Row(
                            children: [
                              Text(
                                '75',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey[800],
                                    ),
                              ),
                              const Icon(
                                Icons.attach_money_outlined,
                                color: Colors.black,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
