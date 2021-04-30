import 'package:flutter/material.dart';

class WorkerInfoListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;

  WorkerInfoListTile({this.leadingIcon, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Icon(leadingIcon,color: Colors.black54,),
      title: Text('$title',style: TextStyle(fontSize: 18),),
    );
  }
}
