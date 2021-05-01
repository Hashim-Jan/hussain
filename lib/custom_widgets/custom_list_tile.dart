import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  IconData leadingIcon;
  IconData trailingIcon;
  String title;
  Function onPressed;
  CustomListTile({this.title,this.leadingIcon,this.trailingIcon,@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: Center(
              child: ListTile(
                onTap: onPressed,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[400],
                  child: Icon(leadingIcon,color: Colors.black54,),
                ),
                title: Text('$title'),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Icon(trailingIcon,size: 30,color: Colors.grey,),
        ),
      ],
    );
  }
}
