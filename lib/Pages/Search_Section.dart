// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'Constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(color: Colors.black38, blurRadius: 4)
                      ]),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 14),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search))),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                      )
                    ]),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.sort_by_alpha)),
              )
            ],
          )
        ],
      ),
    );
  }
}
