import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';

Widget listViewItems() {
  final List<String> entries = <String>['A', 'B', 'C'];

  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 80,
        color: Colors.grey[300],
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('kolicina i naziv'),
                    Text('prilog', style: Style.prilog),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "12.00KM",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.delete,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
