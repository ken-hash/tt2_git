import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tt2mvp/artifacts/tiers/btierlist_desktop.dart';
import 'package:tt2mvp/artifacts/tiers/btierlist_mobile.dart';
import 'btierlist_tablet.dart';

class BtierList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BtierListMobile(),
      desktop: BtierListDesktop(),
      tablet: BtierListTablet(),
    );
  }
}