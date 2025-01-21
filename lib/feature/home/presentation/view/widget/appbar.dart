import 'package:flutter/material.dart';

PreferredSizeWidget? customAppbar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.purple,
    title: const Text(
      'Posts',
      style: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}
