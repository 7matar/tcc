import 'package:flutter/material.dart';
import 'package:tcc/app/models/anotacoes_model.dart';

import '../widgets/custom_list_card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 1;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              bottom: const TabBar(
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.edit_note,
                    color: Color.fromARGB(255, 72, 88, 39),
                    size: 35,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.note_add_outlined,
                    color: Color.fromARGB(255, 72, 88, 39),
                    size: 30,
                  )),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 28,
              right: 28,
            ),
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 20),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: AnotacoesModel.getAnotacoes().length,
                        itemBuilder: (_, idx) => CustomListCardWidget(
                          anotacao: AnotacoesModel.getAnotacoes()[idx],
                        ),
                        separatorBuilder: (_, __) => const Divider(),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image.asset('assets/logo.png', width: 150, height: 150),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ),
      );
}
