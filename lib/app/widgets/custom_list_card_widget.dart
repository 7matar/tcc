import 'package:flutter/material.dart';
import '../models/anotacoes_model.dart';
import '../views/details_page.dart';

class CustomListCardWidget extends StatelessWidget {
  final AnotacoesModel anotacao;
  const CustomListCardWidget({super.key, required this.anotacao});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsPage(anotacao: anotacao),
            fullscreenDialog: false,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 37, 37, 37),
          borderRadius: (BorderRadius.all(
            Radius.circular(15),
          )),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                anotacao.title,
                style: Theme.of(context).textTheme.headline6,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(height: 7),
              Text(anotacao.parag,
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 7),
              Text(
                anotacao.date,
                style: Theme.of(context).textTheme.subtitle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
