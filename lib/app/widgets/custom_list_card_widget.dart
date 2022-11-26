import 'package:flutter/material.dart';
import '../models/anotacoes_model.dart';

class CustomListCardWidget extends StatelessWidget {
  final AnotacoesModel anotacao;
  const CustomListCardWidget({super.key, required this.anotacao});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 114,
        decoration: const BoxDecoration(
          color: Color.fromARGB(193, 0, 0, 0),
          borderRadius: (BorderRadius.all(
            Radius.circular(15),
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      anotacao.title,
                      style: Theme.of(context).textTheme.headline6,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      anotacao.parag,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      anotacao.date,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
