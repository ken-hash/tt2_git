import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class CtierListTablet extends StatelessWidget {
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
              ArtifactIconTablet(artID: 1301),
              ArtifactIconTablet(artID: 1302),
              ArtifactIconTablet(artID: 1303),
              ArtifactIconTablet(artID: 1304),
              ArtifactIconTablet(artID: 1305),
              ArtifactIconTablet(artID: 1306),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1307),
              ArtifactIconTablet(artID: 1308),
              ArtifactIconTablet(artID: 1309),
              ArtifactIconTablet(artID: 1310),
              ArtifactIconTablet(artID: 1311),
              ArtifactIconTablet(artID: 1312),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ArtifactIconTablet(artID: 1313),
              ArtifactIconTablet(artID: 1314),
              ArtifactIconTablet(artID: 1315),
              ArtifactIconTablet(artID: 1316),
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

