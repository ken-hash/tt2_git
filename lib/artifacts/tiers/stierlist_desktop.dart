import 'package:flutter/material.dart';
import '../artifacts_commons.dart';

class StierListDesktop extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArtifactIconDesktop(artID: 1001),
              ArtifactIconDesktop(artID: 1002),
              ArtifactIconDesktop(artID: 1003),
              ArtifactIconDesktop(artID: 1004),
              ArtifactIconDesktop(artID: 1005),
              ArtifactIconDesktop(artID: 1006),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ArtifactIconDesktop(artID: 1007),
              ArtifactIconDesktop(artID: 1008),
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

