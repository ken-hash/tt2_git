import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class BtierListDesktop extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1201),
              ArtifactIconDesktop(artID: 1202),
              ArtifactIconDesktop(artID: 1203),
              ArtifactIconDesktop(artID: 1204),
              ArtifactIconDesktop(artID: 1205),
              ArtifactIconDesktop(artID: 1206),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1207),
              ArtifactIconDesktop(artID: 1208),
              ArtifactIconDesktop(artID: 1209),
              ArtifactIconDesktop(artID: 1210),
              ArtifactIconDesktop(artID: 1211),
              ArtifactIconDesktop(artID: 1212),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1213),
              ArtifactIconDesktop(artID: 1214),
              ArtifactIconDesktop(artID: 1215),
              ArtifactIconDesktop(artID: 1216),
              ArtifactIconDesktop(artID: 1217),
              ArtifactIconDesktop(artID: 1218),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ArtifactIconDesktop(artID: 1219),
              ArtifactIconDesktop(artID: 1220),
              ArtifactIconDesktop(artID: 1221),
              ArtifactIconDesktop(artID: 1222),
              ArtifactIconDesktop(artID: 1223),
            ],
          ),

          const Divider(
            color: Colors.black12,
            thickness: 1,
            indent: 30,
          ),
        ],
      ),
    );
  }
}
