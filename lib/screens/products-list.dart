import 'package:flutter/material.dart';
import 'package:savot_app/widgets/add-product-dialog.dart';
import 'package:savot_app/widgets/top-menu.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu lista'),
        actions: <Widget>[TopMenu()],
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return AddProductDialog();
            },
          )
        },
      ),
    );
  }
}
