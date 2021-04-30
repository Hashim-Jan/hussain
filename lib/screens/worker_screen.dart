import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/worker_list_tile.dart';

class WorkerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ///
          /// Worker Header
          ///
          Container(
            height: 200,
            decoration: BoxDecoration(
              ///color
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.deepOrange,
                  Colors.deepOrangeAccent[100],
                ]
              ),
              ///border
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              ///shadow
              boxShadow: [
                BoxShadow(
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(0,10),
                  color: Colors.grey
                )
              ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  ///
                  /// Icon
                  ///
                  Icon(Icons.assignment_sharp,color: Colors.white,),
                  SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ///
                    /// Profile
                    ///
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: Icon(CupertinoIcons.profile_circled,size: 60,),
                    ),
                    ///
                    /// Name
                    ///
                    title: Text(
                      'Muhammad Khan',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    ///
                    /// Description
                    ///
                    subtitle:Text(
                      'Electrician',
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    ///
                    /// Edit icon
                    ///
                    trailing: Icon(Icons.edit,color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
          ///
          /// Body
          ///
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ///
                /// Account
                ///
                WorkerListTile(
                  title: 'Account',
                  leadingIcon: Icons.account_box_outlined,
                  onPressed: ()=>Navigator.pushNamed(context, 'buyer_screen'),
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Notification
                ///
                WorkerListTile(
                  title: 'Notification',
                  leadingIcon: Icons.notifications_active_rounded,
                  onPressed: ()=>Navigator.pushNamed(context, 'seller_screen'),
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Terms & Condition
                ///
                WorkerListTile(
                  title: 'Terms & Condition',
                  leadingIcon: Icons.assignment_sharp,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// User Agreement
                ///
                WorkerListTile(
                  title: 'User Agreement',
                  leadingIcon: Icons.assignment,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Share Khizmat
                ///
                WorkerListTile(
                  title: 'Share Khizmat',
                  leadingIcon: Icons.share_outlined,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Support
                ///
                WorkerListTile(
                  title: 'Support',
                  leadingIcon: CupertinoIcons.person_circle,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Language
                ///
                WorkerListTile(
                  title: 'Language',
                  leadingIcon: Icons.language,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// About
                ///
                WorkerListTile(
                  title: 'About',
                  leadingIcon: Icons.info_outline_rounded,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
                Divider(color: Colors.orange,thickness: 2,),
                ///
                /// Log out
                ///
                WorkerListTile(
                  title: 'Log out',
                  leadingIcon: Icons.logout,
                  onPressed: ()=>null,
                  trailingIcon: Icons.arrow_forward_ios_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
