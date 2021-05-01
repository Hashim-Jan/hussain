import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/back_button_header.dart';
import 'package:two_screen/custom_widgets/custom_floating_action_button.dart';
import 'package:two_screen/custom_widgets/custom_list_tile.dart';
import 'package:two_screen/custom_widgets/custom_navigation_bar.dart';
class SellerScreen extends StatelessWidget {
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
                BackButtonHeader(title: 'Back',onPressed: ()=>Navigator.pop(context),),
                ///
                /// Seller details
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Align(
                        child: Text(
                          'Seller',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                      ),
                      SizedBox(height: 30,),
                      CustomListTile(
                        title: 'Name',
                        leadingIcon: Icons.person,
                        trailingIcon:Icons.keyboard_arrow_right,
                        onPressed: null,
                      ),
                      CustomListTile(title: 'Rating',leadingIcon: Icons.star,trailingIcon:Icons.keyboard_arrow_right,onPressed: null,),
                      CustomListTile(title: 'Average Response time',leadingIcon: Icons.av_timer,trailingIcon:Icons.keyboard_arrow_right,onPressed: null,),
                      CustomListTile(title: 'Level',leadingIcon: Icons.waterfall_chart,trailingIcon:Icons.keyboard_arrow_right,onPressed: null,),
                      CustomListTile(title: 'Customer request',leadingIcon: Icons.person_add_alt_1,trailingIcon:Icons.keyboard_arrow_right,onPressed: null,),
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
