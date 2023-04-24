// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

class UsuarioPage extends StatelessWidget {
  final String username;

  const UsuarioPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Usuario',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(right: 2),
              child: Row(
                children: [
                  const Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: Colors.white,
                  ),
                  kHalfWidthsizedBox,
                  Text('Reporte',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.white))
                ],
              ),
            ),
          )
        ],
      ),
      body:
          // Container(
          //   child: SingleChildScrollView(
          //     physics: BouncingScrollPhysics(),
          //     child: Column(
          //       children: [
          //         Container(
          //           width: double.infinity,
          //           height: 150,
          //           decoration: const BoxDecoration(
          //               color: KBGSecunColor,
          //               borderRadius: BorderRadius.only(
          //                   bottomLeft: Radius.circular(20),
          //                   bottomRight: Radius.circular(20))),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: KBGSecunColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    maxRadius: 50,
                    minRadius: 50,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/icons/hombre.png'),
                  ),
                  kWidthsizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Andres Perez',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white)),
                      Text(
                        'Andrade Lopez',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontSize: 14, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfilesDetailRow(
                    title: 'Datos Del Registro', value: '01-03-2023'),
                ProfilesDetailRow(
                    title: 'Ultima Actualizcion', value: '20-03-2023')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfilesDetailRow(
                    title: 'Direccion', value: 'Carrera 4 N° 11-25'),
                ProfilesDetailRow(
                    title: 'Ultima Actualizcion', value: '20-03-2023')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfilesDetailRow(title: 'Telefono', value: '3245897105'),
                ProfilesDetailRow(
                    title: 'Ultima Actualizcion', value: '20-03-2023')
              ],
            ),
            kHalfWidthsizedBox,
            ProfilesDetailColumn(title: 'Nombre', value: 'Andres Perez'),
            ProfilesDetailColumn(title: 'Apellid', value: 'Andrade Lopez'),
            ProfilesDetailColumn(title: 'Telefono', value: '3245897105'),
            ProfilesDetailColumn(
                title: 'Direccion', value: 'Carrera 4 N° 11-25'),
            ProfilesDetailColumn(
                title: 'Email', value: 'andresperes458@gmail.com')
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(
        selectedMenu: MenuState.profile,
        username: username,
      ),
    );
  }
}

class ProfilesDetailRow extends StatelessWidget {
  const ProfilesDetailRow(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: KDefaultPadding / 4,
          left: KDefaultPadding / 4,
          top: KDefaultPadding / 2),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 10),
              ),
              kHalfWidthsizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 10),
              ),
              kHalfWidthsizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Divider(
                  thickness: 1,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20,
          )
        ],
      ),
    );
  }
}

class ProfilesDetailColumn extends StatelessWidget {
  const ProfilesDetailColumn(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.grey, fontSize: 10),
                ),
                kWidthsizedBox,
                Text(
                  value,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                kHalfWidthsizedBox,
                SizedBox(
                  height: 5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Divider(
                    thickness: 1,
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.lock_outline,
            size: 20,
          )
        ],
      ),
    );
  }
}
