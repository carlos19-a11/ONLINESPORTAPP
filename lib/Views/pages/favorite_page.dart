import 'package:flutter/material.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

// class FavrtScreen extends StatelessWidget {
//   final String username;

//   const FavrtScreen({super.key, required this.username});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FavrtScreen'),
//       ),
//       bottomNavigationBar: bottomNavigationBar(
//         username: username,
//         selectedMenu: MenuState.favourite,
//       ),
//     );
//   }
// }

class FavoritesPage extends StatefulWidget {
  final List<FavoriteItem> favorites;
  final String username;

  const FavoritesPage(
      {required Key key, required this.favorites, required this.username})
      : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      bottomNavigationBar: bottomNavigationBar(
        username: widget.username,
        selectedMenu: MenuState.favourite,
      ),
      body: widget.favorites.isEmpty
          ? Center(
              child: Text('No favorites yet!'),
            )
          : ListView.builder(
              itemCount: widget.favorites.length,
              itemBuilder: (BuildContext context, int index) {
                final favorite = widget.favorites[index];
                return ListTile(
                  leading: Image.network(favorite.imageUrl),
                  title: Text(favorite.title),
                  subtitle: Text(favorite.subtitle),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        widget.favorites.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}

class FavoriteItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  FavoriteItem(
      {required this.imageUrl, required this.title, required this.subtitle});
}
