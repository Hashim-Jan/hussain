import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/back_button_header.dart';
import 'package:two_screen/custom_widgets/custom_list_tile.dart';

class CreateGigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            ///
            /// Back Button
            ///
            BackButtonHeader(title: 'GIGS',onPressed: ()=>null),
            SizedBox(height: 20,),
            ///
            /// Page title
            ///
            Text('Create Gigs',style: TextStyle(fontSize: 18),),
            SizedBox(height: 20,),
            ///
            /// Body
            ///
            Expanded(
              child:ListView(
                children: [
                  CustomListTile(
                    title: 'Category',
                    leadingIcon: Icons.more,
                    onPressed: ()=>null,
                  ),
                  CustomListTile(
                    title: 'Service Name',
                    leadingIcon: Icons.person_add_alt_1,
                    onPressed: ()=>null,
                  ),
                  CustomListTile(
                    title: 'Hourly Charges',
                    leadingIcon: Icons.timer,
                    onPressed: ()=>null,
                  ),
                  CustomListTile(
                    title: 'Overall Charges',
                    leadingIcon: Icons.attach_money_outlined,
                    onPressed: ()=>null,
                  ),
                  CustomListTile(
                    title: 'Coverage Location',
                    leadingIcon: Icons.location_on,
                    onPressed: ()=>null,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ///
            /// Save button
            ///
            GestureDetector(
              onTap: ()=> null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Center(
                  child: Text('Save',style: TextStyle(color: Colors.white),),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
