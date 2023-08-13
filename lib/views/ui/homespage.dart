import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/appstyle.dart';
import 'package:online_shop/views/shared/product_card.dart';
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
        backgroundColor: const Color(0xFFE2E2E2),
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
                            28,
                            Colors.white,
                            FontWeight.bold,
                            1.5,
                          ),
                        ),
                        Text(
                          'Collection',
                          style: appstyleWithHt(
                            28,
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
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.405,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return const ProductCard(
                                    price: '\$20.00',
                                    category: 'Men Shoes',
                                    id: 'id',
                                    name: "Adiddas NMD Runnder",
                                    image:
                                        'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png');
                              }),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 20, 12, 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ladies Shoes',
                                      style: appstyle(
                                        20,
                                        Colors.black,
                                        FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Show All',
                                          style: appstyle(
                                            18,
                                            Colors.black,
                                            FontWeight.w500,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_double_arrow_right,
                                          size: 18,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.13,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.28,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 0.8,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png'),
                                  ),
                                );
                              }),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.405,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.405,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
