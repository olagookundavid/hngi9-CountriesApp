// ignore_for_file: file_names

import 'package:countryapp/constants/consts.dart';
import 'package:countryapp/model/country_model.dart';
import 'package:countryapp/network/network_enum.dart';
import 'package:flutter/material.dart';

import 'package:countryapp/network/network_service.dart';

import '../network/network_helper.dart';

class CountryRespository {
  Future<List<Country>?> getData() async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      urll: StaticValues.apiUrl,
      queryParam: null,
    );

    debugPrint('Response ${response?.statusCode}');

    return await NetworkHelper.filterResponse(
        callBack: _listOfCountriesFromJson,
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          debugPrint('Error type-$errorType - Message $msg');
          return null;
        });
  }

  List<Country> _listOfCountriesFromJson(json) {
    List<Country> countryList = (json as List)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
    countryList.sort((a, b) {
      return a.name!.common!
          .toLowerCase()
          .compareTo(b.name!.common!.toLowerCase());
    });
    return countryList;
  }
}
