import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back_ios_outlined),
              title: Text("Notification"),
              trailing: Icon(Icons.person_add_alt_1),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: ListView(
                children: [
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: 'Now',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '2hr ago',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '4hr ago',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '05 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '03 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                  NotificationListTile(
                    notificationText: 'Your service has been picked up',
                    dateTime: '02 sep 2020',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationListTile extends StatelessWidget {
  final String notificationText;
  final String dateTime;
  NotificationListTile({this.notificationText,this.dateTime});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.circle,size: 10,color: Colors.deepOrangeAccent,),
      title: Text('$notificationText'),
      subtitle: Text('$dateTime'),
    );
  }
}
