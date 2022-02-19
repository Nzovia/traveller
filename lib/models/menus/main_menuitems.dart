import 'package:flutter/material.dart';
import 'package:traveller/components/menu_item.dart';

class MenuItems {
  //create each menu item
  static const List<MenuItem> itemsFirst =[
    itemSettings,
    itemRefresh
  ];
  static const List<MenuItem> itemsSecond = [
    itemDarkmode,
  ];
  static const itemSettings = MenuItem(
    icon: Icons.settings,
    text: 'Settings',

  );
  static const itemRefresh = MenuItem(
    icon: Icons.refresh,
    text: 'Refresh',

  );
  static const itemDarkmode = MenuItem(
    icon: Icons.dark_mode,
    text: 'Darkmode',

  );
}
