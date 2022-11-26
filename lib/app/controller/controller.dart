import 'package:flutter/widgets.dart';

import '../models/anotacoes_model.dart';

class HomeController {
  List<AnotacoesModel> currencies = AnotacoesModel.getAnotacoes();

  final TextEditingController? toText;
  final TextEditingController? fromText;

  AnotacoesModel? toCurrency;
  AnotacoesModel? fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = AnotacoesModel.getAnotacoes();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }
}
