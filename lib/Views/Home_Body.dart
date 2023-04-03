// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'Custom_AppBar.dart';
import 'Search_Section.dart';
import 'category/category.dart';
import 'productos/Recent_Products.dart';
import 'slider/slider.dart';
import '../Widgets/categoriy/category_productos.dart';

// class HomeBody extends StatefulWidget {
//   final String usernamed;
//   const HomeBody({super.key, required this.usernamed});

//   @override
//   State<HomeBody> createState() => HomeBodyState();
// }

// class HomeBodyState extends State<HomeBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 CustomAppBar(username: user,),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 SearchBar(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 ProductoSlider(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 CategorPage(),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(height: 250, child: RecentProducts())
//               ],
//             ),
//           ),
//         ),
//       ),
//       drawer: const Drawer(),
//     );
//   }
// }

class HomeBody extends StatelessWidget {
  final String username;
  const HomeBody({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                Container(height: 250, child: RecentProducts())
              ],
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
