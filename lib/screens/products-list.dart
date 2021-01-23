import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:savot_app/models/product.dart';
import 'package:savot_app/widgets/products-list/product-tile.dart';
import 'package:savot_app/widgets/top-menu.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  Future<dynamic> products;

  @override
  void initState() {
    super.initState();
    products = fetchProducts();
  }

  Future fetchProducts() async {
    print('fetch');
    try {
      Response response = await Dio().get(
          "https://savot.eu.ngrok.io/api/products",
          options: Options(contentType: 'application/json', headers: {
            'Authorization': 'Bearer 9|Rx720ZJCQZPkMWtlmIZlPQowL4pUFVwfiDU5ZsIg'
          }));
      print(response.data);
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tu lista'),
          actions: <Widget>[TopMenu()],
        ),
        body: FutureBuilder(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Product product = Product.fromJson(snapshot.data[index]);
                  return ProductTile(product: product);
                },
              );
            }

            return CircularProgressIndicator();
          },
        ));
  }
}
