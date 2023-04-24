// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:onlinesports/Views/enum.dart';
import '../Widgets/cart/carts_secreents.dart';
import 'Home_Screen.dart';
import 'pages/favorite_page.dart';
import 'pages/user.dart';

// ignore: camel_case_types
class bottomNavigationBar extends StatelessWidget {
  final String username;

  const bottomNavigationBar(
      {Key? key, required this.selectedMenu, required this.username})
      : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inactivecolor = Colors.grey;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.transparent,
                  offset: Offset(0, -15),
                  blurRadius: 200,
                  blurStyle: BlurStyle.normal)
            ]),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/icons/casa.png',
              ),
              iconSize: 22,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              username: username,
                            )));
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/favorito.png',
                // color: MenuState.favourite == selectedMenu
                //     ? KPrimaryColor
                //     : inactivecolor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavoritesPage(
                              key:
                                  UniqueKey(), // Agregar una clave única para evitar errores
                              username: username,
                              favorites: [],
                            )));
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/carro.png',
                // color: MenuState.shoppingcart == selectedMenu
                //     ? Colors.black
                //     : inactivecolor,
              ),
              iconSize: 22,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
                // icon: SvgPicture.asset('assets/imags/camiseta.jpg'),
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/hombre.png',
                // color: MenuState.profile == selectedMenu
                //     ? KPrimaryColor
                //     : inactivecolor,
              ),
              iconSize: 22,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UsuarioPage(
                              username: username,
                            )));
              },
            ),
          ],
        )),
      ),
    );
  }
}

// El error indica que no se ha definido un método 
//llamado FavrtScreen en la clase _BottonBravState, 
//y sugiere que se corrija el nombre del método o se
// defina uno nuevo con ese nombre.
// Para solucionar este error, debemos definir 
//el método FavrtScreen en la clase _BottonBravState o 
//cambiar el nombre del método en el código donde se llama.
// Si decidimos definir el método FavrtScreen, podemos hacerlo 
//de la siguiente manera:

// class _BottonBravState extends State<BottonBrav> {
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(
//       username: '',
//     ),
//     // NotificationScreen(),
//     // SettingsScreen(),
//     FavrtScreen(username: 'example_username'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class FavrtScreen extends StatelessWidget {
//   final String username;

//   const FavrtScreen({Key? key, required this.username}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Favorites'),
//       ),
//       body: const Center(
//         child: Text('Favorites Screen'),
//       ),
//     );
//   }
// }
