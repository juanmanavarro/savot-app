import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savot_app/models/product.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl,
      child: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide.none,
                horizontal: BorderSide(width: 1, color: Colors.grey[200]),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.network(
                        product.image,
                        height: 100,
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "${product.cashback.toString()} ${product.currency} a tu saldo",
                              ),
                              Container(
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    product.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 14),
                                  )),
                              Text(
                                product.platform,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[500]),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  _launchUrl() async {
    if (await canLaunch(product.url)) {
      await launch(product.url);
    } else {
      throw 'Could not launch ${product.url}';
    }
  }
}
