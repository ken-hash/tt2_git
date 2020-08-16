import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class BtierListMobile extends StatelessWidget {
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
              'B Tier Artifacts',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.left,
            ),
          ),
          MobArt(artID2: 1201,artID3: 1202),
          MobArt(artID2: 1203,artID3: 1204),
          MobArt(artID2: 1205,artID3: 1206),
          MobArt(artID2: 1207,artID3: 1208),
          MobArt(artID2: 1209,artID3: 1210),
          MobArt(artID2: 1211,artID3: 1212),
          MobArt(artID2: 1213,artID3: 1214),
          MobArt(artID2: 1215,artID3: 1216),
          MobArt(artID2: 1217,artID3: 1218),
          MobArt(artID2: 1219,artID3: 1220),
          MobArt(artID2: 1221,artID3: 1222),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ArtifactIconDesktop(artID: 1223),
            ],
          ),
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