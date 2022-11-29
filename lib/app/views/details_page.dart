import 'package:flutter/material.dart';
import 'package:tcc/app/models/anotacoes_model.dart';

class DetailsPage extends StatelessWidget {
  final AnotacoesModel anotacao;

  const DetailsPage({super.key, required this.anotacao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          toolbarHeight: 30,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 17,
            right: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: Theme.of(context).textTheme.headline5,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Título',
                ),
                controller: TextEditingController(
                  text: anotacao.title,
                ),
              ),
              TextField(
                style: Theme.of(context).textTheme.bodyText1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Anotação',
                ),
                controller: TextEditingController(text: anotacao.parag),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
