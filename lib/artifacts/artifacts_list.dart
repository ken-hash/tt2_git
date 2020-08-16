import 'package:flutter/material.dart';
import 'tiers/stierlist.dart';
import 'tiers/atierlist.dart';
import 'tiers/btierlist.dart';
import 'tiers/ctierlist.dart';
import 'tiers/ftierlist.dart';


class ArtifactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StierList(),
          AtierList(),
          BtierList(),
          CtierList(),
          FtierList(),
        ],
      ),
    );
  }
}
