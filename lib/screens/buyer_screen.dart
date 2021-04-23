import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/back_button_header.dart';
import 'package:two_screen/custom_widgets/custom_floating_action_button.dart';
import 'package:two_screen/custom_widgets/custom_list_tile.dart';
import 'package:two_screen/custom_widgets/custom_navigation_bar.dart';

class BuyerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            child: Column(
              children: [
                ///
                /// Header or appbar
                BackButtonHeader(onPressed: ()=>Navigator.pop(context),),
                ///
                /// Buyer details
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Align(
                        child: Text(
                          'Buyer',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                      ),
                      SizedBox(height: 30,),
                      CustomListTile(title: 'Name',icon: Icons.person,onPressed: null,),
                      CustomListTile(title: 'Search for services',icon: Icons.search,onPressed: null,),
                      CustomListTile(title: 'Total hirings',icon: Icons.people_rounded,onPressed: null,),
                      CustomListTile(title: 'Popular services',icon: Icons.vertical_align_top,onPressed: null,),
                      CustomListTile(title: 'About me',icon: Icons.details,onPressed: null,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
