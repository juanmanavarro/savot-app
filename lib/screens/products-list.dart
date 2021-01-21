import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu lista'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (String result) {
              Navigator.pushNamed(context, result);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem(
                value: '/profile',
                child: Text('Perfil'),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Text('Salir'),
              ),
            ],
          )
        ],
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Añade un producto'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                          'Escribe o pega un enlace. Solo se aceptan enlaces a productos de Aliexpress, por ahora.'),
                      Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: InkWell(
                              child: new Text(
                                'Ir a Aliexpress',
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                              onTap: () => Navigator.pushReplacementNamed(
                                  context, '/browser'))),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'https://...',
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Enviar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          )
        },
      ),
    );
  }
}
