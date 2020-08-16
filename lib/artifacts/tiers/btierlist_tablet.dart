import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class BtierListTablet extends StatelessWidget {
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
              ArtifactIconTablet(artID: 1201),
              ArtifactIconTablet(artID: 1202),
              ArtifactIconTablet(artID: 1203),
              ArtifactIconTablet(artID: 1204),
              ArtifactIconTablet(artID: 1205),
              ArtifactIconTablet(artID: 1206),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1207),
              ArtifactIconTablet(artID: 1208),
              ArtifactIconTablet(artID: 1209),
              ArtifactIconTablet(artID: 1210),
              ArtifactIconTablet(artID: 1211),
              ArtifactIconTablet(artID: 1212),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1213),
              ArtifactIconTablet(artID: 1214),
              ArtifactIconTablet(artID: 1215),
              ArtifactIconTablet(artID: 1216),
              ArtifactIconTablet(artID: 1217),
              ArtifactIconTablet(artID: 1218),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ArtifactIconTablet(artID: 1219),
              ArtifactIconTablet(artID: 1220),
              ArtifactIconTablet(artID: 1221),
              ArtifactIconTablet(artID: 1222),
              ArtifactIconTablet(artID: 1223),
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
