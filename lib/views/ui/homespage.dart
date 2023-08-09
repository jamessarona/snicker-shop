import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/appstyle.dart';
import '../shared/container_clipper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ClipPath(
                clipper: HeaderContainerClipper(),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.black,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 8, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Athletics Shoes',
                          style: appstyleWithHt(
                            25,
                            Colors.white,
                            FontWeight.bold,
                            1.5,
                          ),
                        ),
                        Text(
                          'Collection',
                          style: appstyleWithHt(
                            25,
                            Colors.white,
                            FontWeight.bold,
                            1.2,
                          ),
                        ),
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          labelStyle: appstyle(
                            18,
                            Colors.white,
                            FontWeight.bold,
                          ),
                          unselectedLabelColor: Colors.grey.withOpacity(0.3),
                          tabs: const [
                            Tab(
                              text: "Mens Shoes",
                            ),
                            Tab(
                              text: "Women Shoes",
                            ),
                            Tab(
                              text: "Kids Shoes",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
