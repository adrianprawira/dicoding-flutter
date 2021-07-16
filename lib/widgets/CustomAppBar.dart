import 'package:dicoding_submission_flutter_beginner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String? title;

  const MyAppBar({Key? key, this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: aPrimaryColor,
      centerTitle: true,
      title: Text(title!),
    );
  }
}