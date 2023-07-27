
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBarImpl extends StatelessWidget {
  const SearchBarImpl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: MaterialStateProperty.all(
          Theme.of(context).colorScheme.surface),
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      leading: const Icon(Icons.search),
      hintText: AppLocalizations.of(context)!.search,
      hintStyle: MaterialStateProperty.all(
          Theme.of(context).textTheme.titleSmall),
    );
  }
}
