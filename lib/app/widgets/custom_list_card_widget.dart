import 'package:flutter/material.dart';
import '../models/anotacoes_model.dart';

class CustomListCardWidget extends StatelessWidget {
  final AnotacoesModel anotacao;
  const CustomListCardWidget({super.key, required this.anotacao});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: (BorderRadius.all(
          Radius.circular(15),
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            anotacao.title,
            style: Theme.of(context).textTheme.headline6,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(height: 10),
          Text(anotacao.parag, style: Theme.of(context).textTheme.bodyText2),
          const SizedBox(height: 10),
          Text(
            anotacao.date,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
