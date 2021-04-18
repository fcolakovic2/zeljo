import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';
import 'package:zeljoprojekat/view/CheckOutView/pages/CheckOutScreen.dart';

class listViewItems extends StatefulWidget {
  @override
  _listViewItemsState createState() => _listViewItemsState();
}

class _listViewItemsState extends State<listViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Style.border,
      child: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: UniqueKey(),

            // only allows the user swipe from right to left
            direction: DismissDirection.endToStart,

            onDismissed: (_) {
              setState(() {
                entries.removeAt(index);
              });
            },

            background: Container(
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),

            child: Container(
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
                        onPressed: () {
                          setState(() {
                            entries.removeAt(index);
                          });
                        },
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
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
