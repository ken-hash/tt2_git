import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'artifacts_brain.dart';
import 'artifacts_description.dart';

class ArtifactIconDesktop extends StatelessWidget {
  ArtifactIconDesktop({@required this.artID});

  final int artID;

  @override
  Widget build(BuildContext context) {
    final art = Provider.of<ArtifactBrain>(context);
    return Container(
      height: 90,
      width: 90,
      color: Colors.transparent,
      child: InkWell(
        child: CircleAvatar(
          minRadius: 25,
          maxRadius: 50,
          backgroundColor: Colors.black12,
          backgroundImage: art.getPicture(artID),
        ),
        onTap: () {
          art.code(artID);
        },
        onHover: (event) {
          event ? art.code(artID) : art.code(0);
        },
      ),
    );
  }
}

//onTap

class ArtifactIconTablet extends StatelessWidget {
  ArtifactIconTablet({@required this.artID});

  final int artID;

  @override
  Widget build(BuildContext context) {
    final art = Provider.of<ArtifactBrain>(context);
    return Container(
      height: 90,
      width: 90,
      color: Colors.transparent,
      child: InkWell(
        child: CircleAvatar(
          minRadius: 25,
          maxRadius: 50,
          backgroundColor: Colors.black12,
          backgroundImage: art.getPicture(artID),
        ),
        onTap: () {
          art.code(artID);
          _showDialog(context);
        },
      ),
    );
  }
}

void _showDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        final art = Provider.of<ArtifactBrain>(context);

        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: MediaQuery.of(context).size.height * .6,
            width: MediaQuery.of(context).size.width * .25,
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ArtifactDescription(),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: FlatButton(
                        child: Text("Close"),
                        onPressed: () {
                          art.code(0);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}

class ArtifactIconMobile extends StatelessWidget {
  ArtifactIconMobile({@required this.artID3});

  final int artID3;

  @override
  Widget build(BuildContext context) {
    final art = Provider.of<ArtifactBrain>(context);
    return Container(
      height: 90,
      width: 90,
      color: Colors.transparent,
      child: InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.black12,
            backgroundImage: art.getPicture(artID3),
            minRadius: 50,
            maxRadius: 100,
          ),
          onTap: () {
            art.code(artID3);
          }),
    );
  }
}

class MobArt extends StatelessWidget {
  MobArt({@required this.artID2, @required this.artID3});

  final int artID2;
  final int artID3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ArtifactIconMobile(artID3: artID2),
        ArtifactIconMobile(
          artID3: artID3,
        )
      ],
    );
  }
}
