import 'package:flutter/material.dart';
import 'package:two_screen/custom_widgets/srevice_provide_container.dart';

class ServiceProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            ///
            /// header
            ///
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_outlined),
                      Text('Search Service Provider',style: TextStyle(fontSize: 24),),
                      Icon(Icons.person_search_rounded),
                    ],
                  ),
                  SizedBox(height: 20,),
                  ///
                  /// Search bar
                  ///
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search service provider',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///
            /// Service
            ///
            Expanded(
              child: ListView(
                children: [
                  ServiceProvideContainer(serviceTitle: 'Plumber',userRating: 4.9,imageUrl: 'plumber_image.jpg',),
                  ServiceProvideContainer(serviceTitle: 'Electrician',userRating: 4.6,imageUrl: 'electrician.jpg',),
                  ServiceProvideContainer(serviceTitle: 'House Painter',userRating: 4.1,imageUrl: 'house_painter.jpg',),
                  ServiceProvideContainer(serviceTitle: 'Construction Worker',userRating: 4.4,imageUrl: 'construction_image.jpg',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


