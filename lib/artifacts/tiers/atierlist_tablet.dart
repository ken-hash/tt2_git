import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class AtierListTablet extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1101),
              ArtifactIconTablet(artID: 1102),
              ArtifactIconTablet(artID: 1103),
              ArtifactIconTablet(artID: 1104),
              ArtifactIconTablet(artID: 1105),
              ArtifactIconTablet(artID: 1106),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1107),
              ArtifactIconTablet(artID: 1108),
              ArtifactIconTablet(artID: 1109),
              ArtifactIconTablet(artID: 1110),
              ArtifactIconTablet(artID: 1111),
              ArtifactIconTablet(artID: 1112),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1113),
              ArtifactIconTablet(artID: 1114),
              ArtifactIconTablet(artID: 1115),
              ArtifactIconTablet(artID: 1116),
              ArtifactIconTablet(artID: 1117),
              ArtifactIconTablet(artID: 1118),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1119),
              ArtifactIconTablet(artID: 1120),
              ArtifactIconTablet(artID: 1121),
              ArtifactIconTablet(artID: 1122),
              ArtifactIconTablet(artID: 1123),
              ArtifactIconTablet(artID: 1124),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1125),
              ArtifactIconTablet(artID: 1126),
              ArtifactIconTablet(artID: 1127),
              ArtifactIconTablet(artID: 1128),
              ArtifactIconTablet(artID: 1129),
              ArtifactIconTablet(artID: 1130),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1131),
              ArtifactIconTablet(artID: 1132),
              ArtifactIconTablet(artID: 1133),
              ArtifactIconTablet(artID: 1134),
              ArtifactIconTablet(artID: 1135),
              ArtifactIconTablet(artID: 1136),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1137),
              ArtifactIconTablet(artID: 1138),
              ArtifactIconTablet(artID: 1139),
              ArtifactIconTablet(artID: 1140),
              ArtifactIconTablet(artID: 1141),
              ArtifactIconTablet(artID: 1142),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconTablet(artID: 1143),
              ArtifactIconTablet(artID: 1144),
              ArtifactIconTablet(artID: 1145),
              ArtifactIconTablet(artID: 1146),
              ArtifactIconTablet(artID: 1147),
              ArtifactIconTablet(artID: 1148),
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



