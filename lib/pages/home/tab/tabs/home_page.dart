import 'package:flutter/material.dart';
import 'package:uzum_market_demo/components/constans/images.dart';
import 'package:uzum_market_demo/components/constans/mediaqueries.dart';
import 'package:uzum_market_demo/data/repository/app_repository.dart';
import 'package:uzum_market_demo/pages/home/tab/tabs/widgets/page_view_widget.dart';
import 'package:uzum_market_demo/pages/home/tab/tabs/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: m_w(context) * 0.5,
            child: PageView(
              children: [
                PageViewWidget(image: AppImages.pv_1),
                PageViewWidget(image: AppImages.pv_2),
                PageViewWidget(image: AppImages.pv_3),
                PageViewWidget(image: AppImages.pv_4),
              ],
            ),
          ), //PageView
          const SizedBox(
            height: 12,
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TabBar(
                  labelStyle: TextStyle(color: Colors.black),
                  tabs: [
                    Tab(
                      child: Text(
                        "Barakali Juma",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Mashxur",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Yangi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: m_w(context).toDouble(),
                  height: m_w(context) * 0.92.toDouble(),
                  child: TabBarView(children: [
                    FutureBuilder(
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return const Expanded(child: Center(child: CircularProgressIndicator(),));
                        }
                        if(snapshot.hasData){
                          List? products = snapshot.data;
                          return GridView.builder(
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                            itemBuilder: (context, index) => ProductWidget(
                              product: products[index],
                            ),
                            itemCount: products!.length,
                          );
                        }
                        return Container();

                      },
                      future: AppRepository.getProductByCategoryFromApi("men's clothing"),
                    ),
                    FutureBuilder(
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return const Expanded(child: Center(child: CircularProgressIndicator(),));
                        }
                        if(snapshot.hasData){
                          List? products = snapshot.data;
                          return GridView.builder(
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                            itemBuilder: (context, index) => ProductWidget(
                              product: products[index],
                            ),
                            itemCount: products!.length,
                          );
                        }
                        return Container();

                      },
                      future: AppRepository.getProductByCategoryFromApi("jewelery"),
                    ),
                    FutureBuilder(
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return const Expanded(child: Center(child: CircularProgressIndicator(),));
                        }
                        if(snapshot.hasData){
                          List? products = snapshot.data;
                          return GridView.builder(
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                            itemBuilder: (context, index) => ProductWidget(
                              product: products[index],
                            ),
                            itemCount: products!.length,
                          );
                        }
                        return Container();

                      },
                      future: AppRepository.getProductByCategoryFromApi("women's clothing"),
                    ),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
