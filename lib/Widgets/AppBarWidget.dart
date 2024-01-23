// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../home.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {super.key, required this.address_AppBar, required this.tag});

  final String address_AppBar;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Vx.purple700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Icon(
                Icons.home_filled,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            address_AppBar,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: ('Elizabeth')),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
              Icons.home_filled,
              size: 35,
              color: Vx.purple700,
            ),
          ),
        ],
      ),
    );
  }
}
