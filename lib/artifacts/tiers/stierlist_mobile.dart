import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class StierListMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Text(
              'S Tier Artifacts',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.left,
            ),
          ),
          MobArt(artID2: 1001, artID3: 1002),
          MobArt(artID2: 1003, artID3: 1004),
          MobArt(artID2: 1005, artID3: 1006),
          MobArt(artID2: 1007, artID3: 1008),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          ),
          const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}