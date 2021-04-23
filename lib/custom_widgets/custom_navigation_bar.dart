import 'package:flutter/material.dart';
import 'package:two_screen/screens/buyer_screen.dart';
import 'package:two_screen/screens/seller_screen.dart';
class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10.0,
      shape: CircularNotchedRectangle(),
      notchMargin: 12,
      child: Container(
        height: 65,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ///
              /// Menu tab
              CustomNavigationBarItem(
                itemTitle: 'Menu',
                icon: Icons.view_module,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SellerScreen()));
                },
              ),
              ///
              /// Services tab
              CustomNavigationBarItem(
                itemTitle: 'Services',
                icon: Icons.person_add_alt_1,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyerScreen()));
                },
              ),

              SizedBox(width: 5,),
              ///
              /// Profile tab
              CustomNavigationBarItem(
                itemTitle: 'Profile',
                icon: Icons.person,
                onPressed: null,
              ),
              ///
              /// More tab
              CustomNavigationBarItem(
                itemTitle: 'More',
                icon: Icons.read_more,
                onPressed: null,
              ),
            ],
          ),
        ),
      )
    );
  }
}
///
/// Custom design for all items in bottom navigation bar
class CustomNavigationBarItem extends StatelessWidget {
  final String itemTitle;
  final IconData icon;
  Function onPressed;
  CustomNavigationBarItem({this.itemTitle,this.icon,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        Text("$itemTitle"),
      ],
    );
  }
}



