import 'dart:developer';

import 'package:e_commerce/model/home/prodect_model.dart';
import 'package:e_commerce/service/home_service.dart';
import 'package:flutter/cupertino.dart';

class ItemProvider with ChangeNotifier {
    int selectedSizeIndex = 0;
  ItemProvider() {
    loadingPagae();
  }
  int? sizeChartIndex;
  bool loading = false;
  ProductModel? product;

  void getAProduct(
    productId,
  ) async {
    loading = true;
        notifyListeners();
    await HomeService().getAProduct(productId).then((value) {
      if (value != null) {
        product = value;
        notifyListeners();
        log('product is');
        log(product.toString());
        loading = false;
        notifyListeners();
      } else {
        loading = false;
        notifyListeners();
        null;
      }
    });
  }

  void loadingPagae() {
    loading = false;
    notifyListeners();
  }

    void setSizeIndex(int newValue) {
    selectedSizeIndex = newValue;
    notifyListeners();
  }
}
