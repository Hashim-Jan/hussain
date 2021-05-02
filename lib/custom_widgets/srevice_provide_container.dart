import 'package:flutter/material.dart';
class ServiceProvideContainer extends StatelessWidget {
  final String imageUrl;
  final String serviceTitle;
  final userRating;

  ServiceProvideContainer({this.imageUrl, this.serviceTitle, this.userRating});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset('assets/images/service_images/$imageUrl'),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$serviceTitle',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.deepOrangeAccent,size: 30,),
                      SizedBox(width: 10,),
                      Text(
                        '$userRating',
                        style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'User',
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}