import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parkz/utils/text/regular.dart';

import '../../utils/constanst.dart';
import '../../utils/text/semi_bold.dart';
import '../../l10n/app_localizations.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Big Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icon/notification.svg',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(width: 5,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SemiBoldText(
                        text: AppLocalizations.of(context).importantNotification,
                        color: AppColor.forText,
                        maxLine: 1,
                        fontSize: 15),
                    const SizedBox(height: 5,),
                    const RegularText(
                        text:
                            'Lorem ipsum dolor sit amet consecrate. Corvallis nec nibh tortor gravida tincidunt sapien.',
                        color: AppColor.forText,
                        maxLine: 3,
                        fontSize: 13),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Icon(Icons.more_horiz_outlined),
              ),
            ],
          ),
          SizedBox(height: 5,),
          const RegularText(
              text: '12:45 19/04/2023', fontSize: 13, color: AppColor.navy, ),
        ],
      ),
    );
  }
}
