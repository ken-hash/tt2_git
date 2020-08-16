import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class CtierListMobile extends StatelessWidget {
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
              'C Tier Artifacts',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.left,
            ),
          ),
          MobArt(artID2: 1301, artID3: 1302),
          MobArt(artID2: 1303, artID3: 1304),
          MobArt(artID2: 1305, artID3: 1306),
          MobArt(artID2: 1307, artID3: 1308),
          MobArt(artID2: 1309, artID3: 1310),
          MobArt(artID2: 1311, artID3: 1312),
          MobArt(artID2: 1313, artID3: 1314),
          MobArt(artID2: 1315, artID3: 1316),
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
