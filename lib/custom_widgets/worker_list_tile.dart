import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerListTile extends StatelessWidget {
  final Function onPressed;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subtitle;

  WorkerListTile({this.onPressed, this.leadingIcon, this.title,this.subtitle,this.trailingIcon});

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
        child: Icon(leadingIcon,color: Colors.black54,),
      ),
      title: Text('$title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      subtitle: Text(subtitle),
      trailing: Icon(trailingIcon,size: 30,),
    );
  }
}
