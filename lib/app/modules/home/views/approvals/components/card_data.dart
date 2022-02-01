import 'package:sample_get_cli/app/modules/home/models/MyFiles.dart';
import 'package:sample_get_cli/app/modules/home/views/dashboard/components/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../responsive.dart';

class CardDataInfo extends StatelessWidget {
  const CardDataInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      constraints: BoxConstraints(
        maxHeight: double.infinity,
      ),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              //color: info.color!.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset(
              "assets/icons/one_drive.svg",
              //color: info.color,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) => ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: greenColor,
                      ),
                      child: Text('Accpted')),
                ),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) => ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: redColor,
                      ),
                      child: Text('Rejected')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardDataInfo1 extends StatelessWidget {
  const CardDataInfo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
      ),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              "If the [style] argument is null, the text will use the style from the closest enclosing [DefaultTextStyle] ."),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) => ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: greenColor,
                      ),
                      child: Text('Accpted')),
                ),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) => ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: redColor,
                      ),
                      child: Text('Rejected')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
