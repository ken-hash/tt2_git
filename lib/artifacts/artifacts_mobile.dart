import 'package:flutter/material.dart';
import 'artifacts_description.dart';
import 'artifacts_list.dart';
import 'package:tt2mvp/widgets/navigationbar/navigation_bar.dart';
import 'package:tt2mvp/widgets/bottomnavigationbar/bottom_navigation_bar.dart';

class ArtifactsViewMobile extends StatelessWidget {

  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Colors.black54,
                constraints: BoxConstraints(
                  maxHeight: 80,
                ),
                child: NavigationBar(),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .45,
                      child: Container(
                        color: Colors.black38,
                        child:
                        ArtifactDescription(),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .55,
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
