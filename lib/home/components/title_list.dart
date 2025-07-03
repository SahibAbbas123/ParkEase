import 'package:flutter/material.dart';
import 'package:parkz/utils/constanst.dart';
import 'package:parkz/utils/text/semi_bold.dart';
import '../../l10n/app_localizations.dart';

class TitleList extends StatelessWidget {
  final String title;
  final Widget? page;
  const TitleList({Key? key, required this.title, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SemiBoldText(text: title, fontSize: 20, color: AppColor.forText),
        page != null ? GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page!),
            );
          },
          child: SemiBoldText(text: AppLocalizations.of(context).seeMore, fontSize: 15, color: AppColor.navy)
        ) : const SizedBox(),
      ],
    );
  }
}
