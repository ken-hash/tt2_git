import 'package:flutter/material.dart';
import 'artifacts_description.dart';
import 'artifacts_list.dart';
import 'package:tt2mvp/widgets/navigationbar/navigation_bar.dart';
import 'package:tt2mvp/widgets/bottomnavigationbar/bottom_navigation_bar.dart';

class ArtifactsViewDesktop extends StatelessWidget {

  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                //color: Colors.black54,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 3,
                    )
                  ]
                ),
                constraints: BoxConstraints(
                  maxHeight: 80,
                ),
                child: NavigationBar(),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .25,
                      child: Container(
                        color: Colors.black38,
                        child:
                        ArtifactDescription(),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .75,
                        color: Colors.black87,
                        child: Column(
                          children: [
                            ArtifactsList(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
        bottomNavigationBar: TT2BottomNavigationBar(),
      ),
    );
  }
}
