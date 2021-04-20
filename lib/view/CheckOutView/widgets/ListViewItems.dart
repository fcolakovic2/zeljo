import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

class ListViewItems extends StatefulWidget {
  _ListViewItemsState myListState = new _ListViewItemsState();

  @override
  _ListViewItemsState createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      setState(() {});
    });
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: Styles.border,
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
                velicina.removeAt(index);
                cijena.removeAt(index);
                changePrice();
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
                          style: Styles.boldText,
                        ),
                        Text(
                          velicina[index],
                          style: Styles.prilog,
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
                        style: Styles.boldText,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            naziv.removeAt(index);
                            velicina.removeAt(index);
                            cijena.removeAt(index);
                            changePrice();
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
