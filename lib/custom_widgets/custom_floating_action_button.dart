import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.grey,
      child: Icon(CupertinoIcons.house_fill,),
      onPressed: ()=>null,
    );
  }
}
