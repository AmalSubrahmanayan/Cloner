import 'package:e_commerce/model/home/home_carousal.dart';
import 'package:e_commerce/service/home_service.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getCarousals();
  }

  final TextEditingController controller = TextEditingController();
  List<CarousalModel> carousalList = [];
  bool loading = false;

  void getCarousals()async {
    loading = true;
    notifyListeners();
   await HomeService().getCarousals().then((value) {
      if (value != null) {
        carousalList = value;
        loading = false;
        notifyListeners();
      } else {
        loading = false;
        notifyListeners();
      }
    });
  }
}
