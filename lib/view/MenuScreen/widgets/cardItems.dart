import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/size_config.dart';

Widget cardItems(BuildContext context, DocumentSnapshot document) {
  SizeConfig().init(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              document['name'] + '\n',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                document['min_price'].toString() +
                    ' KM ' +
                    ' - ' +
                    document['max_price'].toString() +
                    " KM ",
                style: TextStyle(fontSize: 16, color: Colors.grey[400]),
              ),
            ),
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
              width: SizeConfig.blockSizeHorizontal * 33,
              height: SizeConfig.blockSizeVertical * 33,
              child: Image.network(
                document['image_url'],
                fit: BoxFit.fitWidth,
              ))),
    ],
  );
}
