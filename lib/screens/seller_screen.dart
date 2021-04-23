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
                BackButtonHeader(onPressed: ()=>Navigator.pop(context),),
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
                      CustomListTile(title: 'Name',icon: Icons.person,onPressed: null,),
                      CustomListTile(title: 'Rating',icon: Icons.star,onPressed: null,),
                      CustomListTile(title: 'Average Response time',icon: Icons.av_timer,onPressed: null,),
                      CustomListTile(title: 'Level',icon: Icons.waterfall_chart,onPressed: null,),
                      CustomListTile(title: 'Customer request',icon: Icons.person_add_alt_1,onPressed: null,),
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
