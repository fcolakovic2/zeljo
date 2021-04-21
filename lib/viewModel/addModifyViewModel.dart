import 'package:zeljoprojekat/services/addModifyService.dart';

addOrderViewModel() {
  return AddModifyService().addOrder();
}

changePriceViewModel() {
  return AddModifyService().changePrice();
}

addMealViewModel(int index, Map document) {
  return AddModifyService().addMeal(index, document);
}
