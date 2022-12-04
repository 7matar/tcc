import 'package:flutter/material.dart';
import 'package:tcc/app/models/anotacoes_model.dart';

class SaveDatas extends StatelessWidget {
  final AnotacoesModel anotacao;

  const SaveDatas({super.key, required this.anotacao});

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
        body: SingleChildScrollView(
          child: Padding(
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
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  controller: TextEditingController(),
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: null,
                  cursorColor: const Color.fromARGB(255, 196, 181, 52),
                  cursorWidth: 3,
                  keyboardType: TextInputType.multiline,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Anotação',
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                      minHeight: 200,
                      minWidth: 200,
                      maxWidth: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
