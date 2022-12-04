// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tcc/app/models/anotacoes_model.dart';
import '../widgets/custom_list_card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  int counter = 1;
  late TabController _tabController;

  get anotacao => null;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: const Color.fromARGB(255, 104, 104, 104),
              labelColor: const Color.fromARGB(255, 196, 181, 52),
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.edit_note,
                    //color: Color.fromARGB(255, 72, 88, 39),
                    size: 35,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.note_add_outlined,
                    // color: Color.fromARGB(255, 72, 88, 39),
                    size: 30,
                  ),
                ),
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
            controller: _tabController,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 17,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 20, 20, 20),
                        borderRadius: (BorderRadius.all(
                          Radius.circular(30),
                        )),
                      ),
                      child: TextField(
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(150, 255, 255, 255),
                          ),
                          border: InputBorder.none,
                          hintText: 'Procurar Anotações',
                          hintStyle: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: AnotacoesModel.getAnotacoes().length,
                      itemBuilder: (_, idx) => CustomListCardWidgetAnotacoes(
                        anotacao: AnotacoesModel.getAnotacoes()[idx],
                      ),
                      separatorBuilder: (_, __) => const Divider(),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 17,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 20, 20, 20),
                        borderRadius: (BorderRadius.all(
                          Radius.circular(30),
                        )),
                      ),
                      child: TextField(
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(150, 255, 255, 255),
                          ),
                          border: InputBorder.none,
                          hintText: 'Procurar Templates',
                          hintStyle: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: TemplatesModel.getTemplates().length,
                      itemBuilder: (_, idx) => CustomListCardWidgetTemplates(
                        template: TemplatesModel.getTemplates()[idx],
                      ),
                      separatorBuilder: (_, __) => const Divider(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              print(_tabController.index);
            });
            if (_tabController.index == 0) {
            } else {
              Navigator.pushNamed(context, '/save_datas');
            }
          },
          backgroundColor: const Color.fromARGB(255, 196, 181, 52),
          child: const Icon(Icons.add),
        ),
      );
}
