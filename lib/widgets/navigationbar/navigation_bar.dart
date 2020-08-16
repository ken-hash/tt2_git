import 'package:flutter/material.dart';
import 'package:tt2mvp/widgets/commons/navbarbuttons.dart';
import 'hover_extensions.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavSizedBox(
            inWidth:100,
            inText: 'ArtifactList',
            onPressed: () {
            },
          ).showCursorOnHover,
        ]
      )
    );
  }
}
