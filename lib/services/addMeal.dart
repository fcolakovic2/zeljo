import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class AddMeal {
  AddMeal();

  void addMeal(index, document) {
    naziv.add(document['name']);
    print(index);
    velicina.add(porcije[index]);
    if (index == 0) cijena.add(document["mala_porcija"]);

    if (index == 1) cijena.add(document["srednja_porcija"]);

    if (index == 2) cijena.add(document["velika_porcija"]);
  }
}
