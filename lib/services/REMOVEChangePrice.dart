import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class ChangePrice {
  ChangePrice();

  String changePrice() {
    double cijenaUkupna = 0;
    for (var i = 0; i < cijena.length; i++) {
      cijenaUkupna += double.parse(cijena[i]);
    }
    ukupnaCijena = cijenaUkupna.toString();
    return ukupnaCijena;
  }
}
