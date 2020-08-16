import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class AtierListDesktop extends StatelessWidget {
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
              ArtifactIconDesktop(artID: 1101),
              ArtifactIconDesktop(artID: 1102),
              ArtifactIconDesktop(artID: 1103),
              ArtifactIconDesktop(artID: 1104),
              ArtifactIconDesktop(artID: 1105),
              ArtifactIconDesktop(artID: 1106),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1107),
              ArtifactIconDesktop(artID: 1108),
              ArtifactIconDesktop(artID: 1109),
              ArtifactIconDesktop(artID: 1110),
              ArtifactIconDesktop(artID: 1111),
              ArtifactIconDesktop(artID: 1112),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1113),
              ArtifactIconDesktop(artID: 1114),
              ArtifactIconDesktop(artID: 1115),
              ArtifactIconDesktop(artID: 1116),
              ArtifactIconDesktop(artID: 1117),
              ArtifactIconDesktop(artID: 1118),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1119),
              ArtifactIconDesktop(artID: 1120),
              ArtifactIconDesktop(artID: 1121),
              ArtifactIconDesktop(artID: 1122),
              ArtifactIconDesktop(artID: 1123),
              ArtifactIconDesktop(artID: 1124),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1125),
              ArtifactIconDesktop(artID: 1126),
              ArtifactIconDesktop(artID: 1127),
              ArtifactIconDesktop(artID: 1128),
              ArtifactIconDesktop(artID: 1129),
              ArtifactIconDesktop(artID: 1130),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1131),
              ArtifactIconDesktop(artID: 1132),
              ArtifactIconDesktop(artID: 1133),
              ArtifactIconDesktop(artID: 1134),
              ArtifactIconDesktop(artID: 1135),
              ArtifactIconDesktop(artID: 1136),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1137),
              ArtifactIconDesktop(artID: 1138),
              ArtifactIconDesktop(artID: 1139),
              ArtifactIconDesktop(artID: 1140),
              ArtifactIconDesktop(artID: 1141),
              ArtifactIconDesktop(artID: 1142),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1143),
              ArtifactIconDesktop(artID: 1144),
              ArtifactIconDesktop(artID: 1145),
              ArtifactIconDesktop(artID: 1146),
              ArtifactIconDesktop(artID: 1147),
              ArtifactIconDesktop(artID: 1148),
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



