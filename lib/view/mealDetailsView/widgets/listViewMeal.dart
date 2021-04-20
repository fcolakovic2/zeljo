import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class ListViewMeal extends StatefulWidget {
  final document;
  ListViewMeal(this.document);
  @override
  _ListViewMealState createState() => _ListViewMealState();
}

class _ListViewMealState extends State<ListViewMeal> {
  String _porcija = porcije[0];
  int pozicija = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: porcije.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: index,
                        groupValue: pozicija,
                        onChanged: (value) {
                          setState(() {
                            pozicija = index;
                          });
                          indexRadio = index;
                        },
                      ),
                      Text(porcije[index]),
                    ],
                  ),
                  if (index == 0)
                    Text(
                      widget.document['mala_porcija'],
                    ),
                  if (index == 1)
                    Text(
                      widget.document['srednja_porcija'],
                    ),
                  if (index == 2)
                    Text(
                      widget.document['velika_porcija'],
                    ),
                ],
              ),
            ),
          );
        },
        // separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
