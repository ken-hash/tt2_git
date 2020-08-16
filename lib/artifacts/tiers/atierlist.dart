import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tt2mvp/artifacts/tiers/atierlist_desktop.dart';
import 'package:tt2mvp/artifacts/tiers/atierlist_mobile.dart';
import 'atierlist_tablet.dart';

class AtierList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: AtierListTablet(),
      mobile: AtierListMobile(),
      desktop: AtierListDesktop(),
    );
  }
}