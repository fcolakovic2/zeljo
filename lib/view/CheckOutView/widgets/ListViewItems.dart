import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/checkOutView/widgets/dismissibleContainer.dart';
import 'package:zeljoprojekat/view/checkOutView/widgets/listCard.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

class ListViewItems extends StatefulWidget {
  _ListViewItemsState myListState = new _ListViewItemsState();

  @override
  _ListViewItemsState createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
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

            background: dismissibleContainer(),

            child: ListCard(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
