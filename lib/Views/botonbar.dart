// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:onlinesports/Views/Home_Screen.dart';
// import 'package:onlinesports/Views/enum.dart';
// import 'package:onlinesports/Views/pages/favorite_page.dart';
// import 'package:onlinesports/Views/pages/user.dart';
// import 'package:onlinesports/Widgets/cart/carts_secreents.dart';

// class BottonBrav extends StatefulWidget {
//   final String username;
//   final MenuState selectedMenu;

//   const BottonBrav({
//     Key? key,
//     required this.username,
//     required this.selectedMenu,
//   }) : super(key: key);

//   @override
//   State<BottonBrav> createState() => _BottonBravState();
// }

// class _BottonBravState extends State<BottonBrav> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
//           child: GNav(
//             rippleColor: Colors.grey,
//             hoverColor: Colors.grey,
//             haptic: true,
//             tabBorderRadius: 20,
//             tabActiveBorder: Border.all(color: Colors.black, width: 1),
//             tabBorder: Border.all(color: Colors.grey, width: 1),
//             tabShadow: [
//               BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 8)
//             ],
//             curve: Curves.easeOutExpo,
//             duration: Duration(milliseconds: 5),
//             gap: 8,
//             activeColor: Colors.white,
//             iconSize: 24,
//             tabBackgroundColor: Colors.black.withOpacity(0.1),
//             padding: const EdgeInsets.all(16),
//             tabs: [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => HomeScreen(
//                                 username: widget.username,
//                               )));
//                 },
//               ),
//               GButton(
//                 icon: Icons.favorite,
//                 text: 'Favorite',
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => FavrtScreen(
//                                 username: widget.username,
//                               )));
//                 },
//               ),
//               GButton(
//                 icon: Icons.shopping_cart,
//                 text: 'Shopping',
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const CartScreen()));
//                 },
//               ),
//               GButton(
//                 icon: Icons.person_sharp,
//                 text: 'Profile',
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => UsuarioPage(
//                                 username: widget.username,
//                               )));
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
