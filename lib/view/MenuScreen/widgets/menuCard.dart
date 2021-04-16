import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/size_config.dart';

class MenuCard extends StatefulWidget {
  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockSizeVertical * 20,
      child: Card(
        shadowColor: Colors.grey[100],
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 5, 0, 5),
              child: Text('BURGER'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 10.0, 5),
                child: Container(
                    width: SizeConfig.blockSizeHorizontal * 35,
                    height: SizeConfig.blockSizeVertical * 35,
                    child: Image.asset('assets/images/burger.jpg'))),
          ],
        ),
      ),
    );
  }
}
