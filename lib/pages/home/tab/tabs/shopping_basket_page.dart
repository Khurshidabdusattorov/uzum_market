import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market_demo/components/constans/mediaqueries.dart';
import 'package:uzum_market_demo/data/models/product_model.dart';
import 'package:uzum_market_demo/pages/home/tab/tabs/widgets/cart_item.dart';

class ShoppingBasketPage extends StatefulWidget {
  const ShoppingBasketPage({Key? key}) : super(key: key);

  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: m_h(context).toDouble(),
          width: m_w(context).toDouble(),
          child: Column(
            children: [
              productInBasket_widget(
                  product: Product(
                      id: 1,
                      title: "nimadir",
                      price: 12300,
                      description: "description",
                      category: "category",
                      image:
                          "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))
            ],
          ),
        ),
      ),
    );
  }
}
