
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartIconAndTotalCard extends StatelessWidget {
  const CartIconAndTotalCard({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: deviceWidth * .25,
        color: Theme.of(context).colorScheme.surface,
        margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * .03),
        padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * .01,
          vertical: deviceHeight * .01,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_sharp,
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 1,
              color: Colors.black,
            ),
            Flexible(
              flex: 3,
              child: Text(
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(
                      textBaseline: TextBaseline.alphabetic,
                    ),
                "300" + AppLocalizations.of(context)!.eGP,
              ),
            )
          ],
        ));
  }
}
