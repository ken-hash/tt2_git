import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'artifacts_brain.dart';

class ArtifactDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ArtifactBrain>(builder: (context, artifactData, child) {
      final artifact = artifactData.getArtList()[0];
      if (artifact.artIdNum == 0) {
        return Container();
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Image(image: artifact.image, height: 100, width: 100),
              ),
            ),
            Center(
              child: Text(
                "${artifact.name.toUpperCase()}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
              ),
            ),
            Center(
              child: Text(
                "\"${artifact.acronym}\"",
                style: TextStyle(
                  color: Colors.lightGreen
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text("• ${artifact.bonuses}"),
            Text("• MaxLevel: ${artifactData.getMaxLevel()}"),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text("${artifact.description2}"),
            Divider(
              color: Colors.grey,
              height: 10,
              indent: 1,
              endIndent: 0,
              thickness: 3,
            ),
            Text("${artifact.description1}"),

          ],
        );
      }
    });
  }
}
