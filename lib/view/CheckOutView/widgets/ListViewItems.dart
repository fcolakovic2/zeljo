import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';

Widget listViewItems() {
  final List<String> entries = <String>['A', 'B', 'C'];

  return ListView.separated(
    // padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'kolicina i naziv',
                    style: Style.boldText,
                  ),
                  Text(
                    'prilog',
                    style: Style.prilog,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "12.00KM",
                  style: Style.boldText,
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.delete,
                    size: 26,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
