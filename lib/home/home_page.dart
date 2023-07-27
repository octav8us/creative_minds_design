import 'package:creative_minds_design/home/app_bar_impl.dart';
import 'package:creative_minds_design/home/cart_icon_and_total_card.dart';
import 'package:creative_minds_design/home/reorder_section.dart';
import 'package:creative_minds_design/home/search_bar_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_section.dart';
import 'main_carousel.dart';
import 'may_love_section.dart';
import 'most_order_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height -
        MediaQuery.paddingOf(context).top -
        MediaQuery.paddingOf(context).bottom -
        kToolbarHeight;

    final deviceWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBarImpl(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: deviceHeight * .02, horizontal: deviceWidth * .005),
              height: deviceHeight * .05,
              child: Row(
                children: [
                  SizedBox(
                    width: deviceWidth * .65,
                    child: const SearchBarImpl(),
                  ),
                  CartIconAndTotalCard(
                      deviceWidth: deviceWidth, deviceHeight: deviceHeight),
                ],
              ),
            ),
            SizedBox(
              width: deviceWidth,
              height: deviceHeight * .3,
              child: const MainCarousel(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    AppLocalizations.of(context)!.categories,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontFamily: GoogleFonts.getFont("Almarai").fontFamily,
                        ),
                  ),
                ),
              ],
            ),
            CategorySection(
                deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            SectionTitle(AppLocalizations.of(context)!.reorder),
            ReorderSection(
                deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            SectionTitle(AppLocalizations.of(context)!.mostOrder),
            MostOrderSection(
                deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            SectionTitle(AppLocalizations.of(context)!.mayLove),
            MayLoveSection(
                deviceWidth: deviceWidth, deviceHeight: deviceHeight),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle(
    this.title, {
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontFamily: GoogleFonts.getFont("Almarai").fontFamily,
                ),
          ),
        ),
      ],
    );
  }
}
