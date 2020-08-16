import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class AtierListMobile extends StatelessWidget {
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
              'A Tier Artifacts',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.left,
            ),
          ),
          MobArt(artID2: 1101, artID3: 1102),
          MobArt(artID2: 1103, artID3: 1104),
          MobArt(artID2: 1105, artID3: 1106),
          MobArt(artID2: 1107, artID3: 1108),
          MobArt(artID2: 1109, artID3: 1110),
          MobArt(artID2: 1111, artID3: 1112),
          MobArt(artID2: 1113, artID3: 1114),
          MobArt(artID2: 1115, artID3: 1116),
          MobArt(artID2: 1117, artID3: 1118),
          MobArt(artID2: 1119, artID3: 1120),
          MobArt(artID2: 1121, artID3: 1122),
          MobArt(artID2: 1123, artID3: 1124),
          MobArt(artID2: 1125, artID3: 1126),
          MobArt(artID2: 1127, artID3: 1128),
          MobArt(artID2: 1129, artID3: 1130),
          MobArt(artID2: 1131, artID3: 1132),
          MobArt(artID2: 1133, artID3: 1134),
          MobArt(artID2: 1135, artID3: 1136),
          MobArt(artID2: 1137, artID3: 1138),
          MobArt(artID2: 1139, artID3: 1140),
          MobArt(artID2: 1141, artID3: 1142),
          MobArt(artID2: 1143, artID3: 1144),
          MobArt(artID2: 1145, artID3: 1146),
          MobArt(artID2: 1147, artID3: 1148),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          ),
        ],
      ),
    );
  }
}

