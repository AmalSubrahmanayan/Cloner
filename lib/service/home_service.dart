import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce/constants/api_endpoints.dart';
import 'package:e_commerce/constants/api_url.dart';
import 'package:e_commerce/model/home/home_carousal.dart';
import 'package:e_commerce/utils/app_exceptions.dart';

class HomeService {
  Dio dio = Dio();
  Future<List<CarousalModel>?> getCarousals() async {
    try {
      final Response response = await dio.get(
        ApiUrl.apiUrl + ApiEndPoints.carousal,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {

log(response.data.toString());        final List<CarousalModel> carousals = (response.data as List)
            .map((e) => CarousalModel.fromJson(e))
            .toList();
        return carousals;
      } else {
        return null;
      }
    } catch (e) {
      AppExceptions.errorHandler(e);
    }
    return null;
  }
}
