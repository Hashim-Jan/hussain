import 'package:flutter/material.dart';

class PopularServiceProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ///
              /// Top Area including location, search box
              ///
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Sir!',style: TextStyle(fontSize: 18),),
                      SizedBox(height: 15,),
                      Text('Near by'),
                      ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        expandedAlignment: Alignment.centerLeft,
                        initiallyExpanded: false,
                        tilePadding: EdgeInsets.all(0),
                        title: Text('Current Location'),
                        children: [
                          Container(
                            height: 50,
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index){
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Peshawar"),
                                    SizedBox(height: 20,),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Text('Current Location'),
                      //     Icon(Icons.keyboard_arrow_down,color: Colors.deepOrangeAccent,)
                      //   ],
                      // ),
                      SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,size: 30,),
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
              ),
              SizedBox(height: 20,),
              ///
              /// Scrolling body
              ///
              Container(
                height: MediaQuery.of(context).size.height * .67,
                child: ListView(
                  children: [
                    ///
                    /// Popular Service Providers
                    ///
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Service Providers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("View all",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 16),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return PopularServiceContainer();
                          }
                      ),
                    ),
                    ///
                    /// Most Popular
                    ///
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("View all",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 16),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return MostPopularServiceContainer();
                          }
                      ),
                    ),
                    ///
                    /// Recent Hired
                    ///
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recent Hired",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("View all",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 16),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return RecentHired();
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularServiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset('assets/images/service_images/house_painter.jpg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('House Painter',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                      SizedBox(width: 5,),
                      Text('4.8',style: TextStyle(color: Colors.deepOrangeAccent),),
                      SizedBox(width: 5,),
                      Text('Top Service Provider')
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
class MostPopularServiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/service_images/house_painter.jpg',scale: 4.7,fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('House Painter',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text('Top Service Provider'),
                      SizedBox(width: 5,),
                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                      SizedBox(width: 5,),
                      Text('4.8',style: TextStyle(color: Colors.deepOrangeAccent),),

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

class RecentHired extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset('assets/images/service_images/house_painter.jpg',scale: 4.7,fit: BoxFit.cover,),
        ),
        title: Text('Laundry',style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kitchen'),
            Row(
              children: [
                Icon(Icons.star,color: Colors.deepOrangeAccent,),
                SizedBox(width: 8,),
                Text('3.5',style: TextStyle(color: Colors.deepOrangeAccent),),
                SizedBox(width: 8,),
                Text('(123 Rating)')
              ],
            )
          ],
        ),
      ),
    );
  }
}



