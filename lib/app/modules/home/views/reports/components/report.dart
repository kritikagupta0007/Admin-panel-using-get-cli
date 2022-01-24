import 'package:sample_get_cli/app/modules/home/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';

class ReportFiles extends StatelessWidget {
  const ReportFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shops Data",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Shop Name"),
                ),
                DataColumn(
                  label: Text("Location"),
                ),
                DataColumn(
                  label: Text("Followers"),
                ),
                DataColumn(
                  label: Text("Number of Videos"),
                ),
              ],
              rows: List.generate(
                demoReportFiles.length,
                (index) => recentFileDataRow(demoReportFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(ReportFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.loc!)),
      DataCell(Text(fileInfo.followers!)),
      DataCell(Text(fileInfo.numOfVideo!)),
    ],
  );
}
