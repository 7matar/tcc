class AnotacoesModel {
  final String title;
  final String parag;
  final String date;

  AnotacoesModel({
    required this.title,
    required this.parag,
    required this.date,
  });

  static List<AnotacoesModel> getAnotacoes() {
    return <AnotacoesModel>[
      AnotacoesModel(
        title: 'Casa',
        parag: 'A casa necessita de uma reforma',
        date: '13:29',
      ),
      AnotacoesModel(
        title: 'Lista de compras',
        parag: 'Arroz, feijão e batata',
        date: '12 de junho',
      ),
      AnotacoesModel(
        title:
            'Trabalho ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++',
        parag:
            'Meu trabalho é muito importante Avemar iadadsadadadasdsadaaaaaaaaaaaaaaaaaaa\nCasamento',
        date: 'Ontem 18:00',
      ),
      AnotacoesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante',
        date: '15 de junho de 2021',
      ),
    ];
  }
}

class TemplatesModel {
  final String title;
  final String parag;
  final String date;

  TemplatesModel({
    required this.title,
    required this.parag,
    required this.date,
  });

  static List<TemplatesModel> getTemplates() {
    return <TemplatesModel>[
      TemplatesModel(
        title: 'Post',
        parag: 'A casa necessita de uma reforma',
        date: '13:29',
      ),
      TemplatesModel(
        title: 'Lista de compras',
        parag: 'Arroz, feijão e batata',
        date: '12 de junho',
      ),
      TemplatesModel(
        title: 'Trabalho',
        parag: 'Meu trabalho é muito importante',
        date: 'Ontem 18:00',
      ),
      TemplatesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante Pera',
        date: '15 de junho de 2021',
      ),
      TemplatesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante Pera',
        date: '15 de junho de 2021',
      ),
      TemplatesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante Pera',
        date: '15 de junho de 2021',
      ),
      TemplatesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante Pera',
        date: '15 de junho de 2021',
      ),
      TemplatesModel(
        title: 'Estudos',
        parag: 'Estudar é muito importante Pera',
        date: '15 de junho de 2021',
      ),
    ];
  }
}
