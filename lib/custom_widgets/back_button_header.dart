import 'package:flutter/material.dart';
class BackButtonHeader extends StatelessWidget {
  Function onPressed;
  BackButtonHeader({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20,),
      child: Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp),
              onPressed:onPressed,
            ),
            Text(
              'Back',
              textScaleFactor: 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
