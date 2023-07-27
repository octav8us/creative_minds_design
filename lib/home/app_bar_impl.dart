import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar AppBarImpl(BuildContext context) {
  return AppBar(
    leadingWidth: MediaQuery.sizeOf(context).width * .6,
    leading: Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .02,
        ),
        const Icon(
          Icons.pin_drop_outlined,
        ),
        Text(
          AppLocalizations.of(context)!.tantaEstad,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontFamily: GoogleFonts.getFont("Almarai").fontFamily,
              ),
        ),
      ],
    ),
    actions: [
      RichText(
        text: TextSpan(children: [
          TextSpan(
            text: AppLocalizations.of(context)!.change,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  decoration: TextDecoration.underline,
                  fontFamily: GoogleFonts.getFont("Almarai").fontFamily,
                ),
          ),
        ]),
      ),
      SizedBox(
        width: MediaQuery.sizeOf(context).width * .05,
      ),
    ],
  );
}
