import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MenuCard extends StatefulWidget {
  var document;
  MenuCard(BuildContext context, DocumentSnapshot this.document);

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
        shadowColor: Colors.grey[50],
        color: Colors.grey[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.document['name'],
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                    width: SizeConfig.blockSizeHorizontal * 33,
                    height: SizeConfig.blockSizeVertical * 33,
                    child: Image.network(widget.document['image_url']))),
          ],
        ),
      ),
    );
  }
}
