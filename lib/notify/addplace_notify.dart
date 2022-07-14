import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/addplace.dart';

class AddPlaceNotify extends ChangeNotifier {
  List<AddPlace> items = [];

   void addOrder(AddPlace order) {
    // check list product in item
    final i = items.indexWhere((e) => e.popular == order.popular);
    if (i > -1) {
      items[i].qty += order.qty;
    } else {
      this.items.add(order);
    }
    notifyListeners();
  }

  removeOrder(o) {
    items.remove(o);
    notifyListeners();
  }

  decrementQty(order) {
    final i = items.indexWhere((e) => e.popular == order.popular);
    if (items[i].qty == 1) {
      removeOrder(order);
    } else {
      items[i].qty -= 1;
      notifyListeners();
    }
  }

  incrementQty(order) {
    items[items.indexOf(order)].qty += 1;
    notifyListeners();
  }

}