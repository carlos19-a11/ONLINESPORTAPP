// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinesports/Pages/Constant.dart';
import 'Custom_AppBar.dart';
import 'Search_Section.dart';
import 'category/category.dart';
import 'productos/Recent_Products.dart';
import 'slider/slider.dart';
import 'category/category_productos.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(),
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
              Container(height: 250, child: RecentProducts())
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
