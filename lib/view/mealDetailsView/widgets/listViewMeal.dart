import 'package:flutter/material.dart';

class ListViewMeal extends StatefulWidget {
  @override
  _ListViewMealState createState() => _ListViewMealState();
}

List porcije = ["Mala porcija", "Srednja porcija", "Velika porcija"];

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
                        },
                      ),
                      Text(porcije[index]),
                    ],
                  ),
                  Text("12 KM"),
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
