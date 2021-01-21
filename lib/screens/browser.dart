import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Browser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aliexpress'),
        backgroundColor: Color(0xffFF4746),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: WebView(
        initialUrl:
            'https://m.es.aliexpress.com/item/4001363813730.html?trace=wwwdetail2mobilesitedetail&aff_platform=api-new-product-detail&aff_trace_key=2bce5b4a53994904a3742f00ffbcfc3b-1611173570950-02615&dp=958dda07-916e-4515-9618-3880968b8b85&terminal_id=7702aa0b38ec4d0f89cba0bc1ef901e8&tmLog=new_Detail',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null, child: Icon(Icons.add), backgroundColor: Colors.red),
    );
  }
}
