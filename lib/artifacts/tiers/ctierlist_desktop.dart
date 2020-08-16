import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class CtierListDesktop extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1301),
              ArtifactIconDesktop(artID: 1302),
              ArtifactIconDesktop(artID: 1303),
              ArtifactIconDesktop(artID: 1304),
              ArtifactIconDesktop(artID: 1305),
              ArtifactIconDesktop(artID: 1306),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1307),
              ArtifactIconDesktop(artID: 1308),
              ArtifactIconDesktop(artID: 1309),
              ArtifactIconDesktop(artID: 1310),
              ArtifactIconDesktop(artID: 1311),
              ArtifactIconDesktop(artID: 1312),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ArtifactIconDesktop(artID: 1313),
              ArtifactIconDesktop(artID: 1314),
              ArtifactIconDesktop(artID: 1315),
              ArtifactIconDesktop(artID: 1316),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
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

