import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Bottom.dart';

class ListViewItems extends StatefulWidget {
  @override
  _ListViewItemsState createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Style.border,
      child: ListView.separated(
        itemCount: naziv.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: UniqueKey(),

            // only allows the user swipe from right to left
            direction: DismissDirection.endToStart,

            onDismissed: (_) {
              setState(() {
                naziv.removeAt(index);
                prilog.removeAt(index);
                cijena.removeAt(index);
                pom();
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          naziv[index],
                          style: Style.boldText,
                        ),
                        Text(
                          prilog[index],
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
                        cijena[index] + " KM",
                        style: Style.boldText,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            naziv.removeAt(index);
                            prilog.removeAt(index);
                            cijena.removeAt(index);
                            pom();
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
