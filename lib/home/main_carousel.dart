import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainCarousel extends StatelessWidget {
  const MainCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2,
            enlargeCenterPage: true,
            enlargeFactor: .44,

            enableInfiniteScroll: true,

            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            clipBehavior: Clip.antiAlias,
            autoPlayCurve: Curves.fastOutSlowIn,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/special_offer_wide.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/special_offer_wide.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
