import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back_ios_outlined),
              title: Text("About Us"),
              trailing: Icon(Icons.person_add_alt_1),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: ListView(
                children: [
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                  AboutPoints(
                    text: 'Lorem Ipsum is simply dummy text'
                        ' of the printing and typesetting industry.'
                        ' Lorem Ipsum has been the industry standard dummy'
                        ' text ever since the 1500s, when an unknown printer',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutPoints extends StatelessWidget {
  final String text;
  AboutPoints({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle,color: Colors.deepOrangeAccent,size: 10,),
          SizedBox(width: 10,),
          Expanded(
            child: Text("$text"),
          )
        ],
      ),
    );
  }
}