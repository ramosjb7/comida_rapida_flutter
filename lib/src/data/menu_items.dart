import 'package:flutter/material.dart';

import '../model/menu_item.dart';

class MenuItems {

  static const List<MenuItem> itemsFirst = [
    itemLogin,
    itemRegistrarse,
    itemSobreNosot
  ];



  static const itemLogin = MenuItem(
    text: 'Login',
    icon: Icons.login_rounded,
  );

  static const itemRegistrarse = MenuItem(
    text: 'Registrarse',
    icon: Icons.recent_actors_outlined,
  );

  static const itemSobreNosot = MenuItem(
    text: 'Sobre Nosotros',
    icon: Icons.person_outline
  );
}