// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, sized_box_for_whitespace, sort_child_properties_last, unused_local_variable, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Widgets/Menu/menuscreen.dart';
import 'Custom_AppBar.dart';
import 'Search_Section.dart';
import 'category/category.dart';
import 'productos/Recent_Products.dart';
import 'slider/slider.dart';
import '../Widgets/categoriy/category_productos.dart';

class HomeBody extends StatelessWidget {
  final String username;
  final String usuario_id;
  const HomeBody({super.key, required this.username, required this.usuario_id});

  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CustomAppBar(
                  username: username,
                ),
                SizedBox(
                  height: 20,
                ),
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                ProductoSlider(),
                SizedBox(
                  height: 20,
                ),
                CategorPage(),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 250, child: RecentProducts(usuario_id: usuario_id))
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Menuscreen(username: username),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, 'Historial', Icons.history_sharp,
              currentPage == DrawerSections.historial ? true : false),
          menuItem(1, 'Politica y Pivacidad', Icons.notes,
              currentPage == DrawerSections.politicas ? true : false),
          menuItem(1, 'Ubicacion', Icons.add_location_outlined,
              currentPage == DrawerSections.ubicacion ? true : false),
          menuItem(1, 'Cerrar Secion', Icons.settings_outlined,
              currentPage == DrawerSections.Cerrar_Secion ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  historial,
  politicas,
  notas,
  ubicacion,
  Cerrar_Secion,
}
