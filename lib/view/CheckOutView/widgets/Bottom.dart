import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  void initState() {
    super.initState();
    changePrice();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      setState(() {});
    });

    return Container(
      decoration: Styles.border,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/cupon.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Total narudžbe",
                  style: Styles.boldBigText,
                ),
                Text(
                  ukupnaCijena,
                  style: Styles.boldBigText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
