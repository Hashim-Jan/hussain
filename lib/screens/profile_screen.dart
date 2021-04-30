import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/worker_info_list_tile.dart';
import 'package:two_screen/custom_widgets/worker_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///
              /// Profile image and edit image
              ///
              Container(
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/profile_icons/profileIcon.png'),
                      radius: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.camera_alt,size: 35,),
                      ),
                    ),
                  ],
                ),
              ),
              ///
              /// Electrician
              ///
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    WorkerListTile(
                      leadingIcon: Icons.edit,
                      title: 'Muhammad khan',
                      subtitle: 'Electrician',
                      trailingIcon: Icons.offline_pin_rounded,
                      onPressed: null,
                    ),
                    ///
                    /// Profile details
                    ///
                    WorkerInfoListTile(
                      leadingIcon: Icons.phone,
                      title: "+923456789",
                    ),
                    WorkerInfoListTile(
                      leadingIcon: Icons.assignment_outlined,
                      title: "16102-2345475-9",
                    ),
                    WorkerInfoListTile(
                      leadingIcon: Icons.email,
                      title: "m.khan@gmail.com",
                    ),
                    WorkerInfoListTile(
                      leadingIcon: Icons.location_on,
                      title: "University town",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              ///
              /// Orders completed
              ///
              Divider(thickness: 2,color: Colors.black,),
              SizedBox(height: 10,),
              Column(
                children: [
                  Text('06',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text('Orders completed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 2,color: Colors.black,),
              SizedBox(height: 50,),
              ///
              /// Logout button
              ///
              GestureDetector(
                onTap: ()=>null,
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout,size: 30,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text('Log Out',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class WaveClipper extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//
//     var path = new Path();
//     path.lineTo(0, size.height); //start path with this if you are making at bottom
//
//     final firstStart = Offset(size.width, size.height-200);
//     //fist point of quadratic bezier curve
//     var firstEnd = Offset(size.width, size.height);
//     //second point of quadratic bezier curve
//     path.quadraticBezierTo(firstStart.dx,firstStart.dy, firstEnd.dy, firstEnd.dx,);
//
//     // var secondStart = Offset(size.width - (size.width / 5), size.height -100);
//     // //third point of quadratic bezier curve
//     // var secondEnd = Offset(size.width, size.height - 10);
//     // //fourth point of quadratic bezier curve
//     // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//
//     path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false; //if new instance have different instance than old instance
//     //then you must return true;
//   }
// }
