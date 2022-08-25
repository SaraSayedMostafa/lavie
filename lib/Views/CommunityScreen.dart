import 'package:flutter/cupertino.dart';

import '../Constants/Colors.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'CommunityScreen',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colors().black
          )
      ),
    );
  }
}
