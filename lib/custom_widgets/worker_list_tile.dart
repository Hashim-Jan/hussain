import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerListTile extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;

  WorkerListTile({this.onPressed, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(),
        ),
        child: Icon(icon,color: Colors.black54,),
      ),
      title: Text('$title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      trailing: Icon(CupertinoIcons.chevron_forward),
    );
  }
}
