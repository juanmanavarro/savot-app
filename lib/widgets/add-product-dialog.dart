import 'package:flutter/material.dart';

class AddProductDialog extends StatelessWidget {
  const AddProductDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/browser'))),
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
  }
}
