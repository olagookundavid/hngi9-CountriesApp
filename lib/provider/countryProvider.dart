import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier {
  Future<List<Country>?>? _getCountryData;

  Future<List<Country>?>? get getCountryData => _getCountryData;

  setCountryData(Future<List<Country>?>? countryData) {
    _getCountryData = countryData;
    notifyListeners();
  }
}
