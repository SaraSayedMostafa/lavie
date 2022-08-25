import 'package:flutter/cupertino.dart';
import 'package:lavie/Constants/Colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
          'NotificationScreen',
           textAlign: TextAlign.center,
        style: TextStyle(
          color: colors().black
        )

      ),
    );
  }
}
