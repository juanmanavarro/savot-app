import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
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
    );
  }
}
