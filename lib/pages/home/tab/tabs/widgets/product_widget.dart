import 'package:flutter/material.dart';
import 'package:uzum_market_demo/data/models/product_model.dart';
import '../../../../../components/constans/mediaqueries.dart';


class ProductWidget extends StatefulWidget {
  Product product;

  ProductWidget({required this.product, Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: m_w(context) * 0.8.toDouble(),
      width: m_w(context) * 0.47,
      child: Column(
        children: [
          Container(
            width: m_w(context) * 0.47,
            height: m_w(context) * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.product.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8)),
          ), //rasm
          const SizedBox(
            height: 3,
          ),
          Text(
            widget.product.title,
            maxLines: 2,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(widget.product.price.toString()),
                  Text(widget.product.price.toString())
                ],
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: const Center(
                  child: Icon(Icons.add_shopping_cart),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
