import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tt2mvp/artifacts/tiers/stierlist_desktop.dart';
import 'package:tt2mvp/artifacts/tiers/stierlist_mobile.dart';
import 'package:tt2mvp/artifacts/tiers/stierlist_tablet.dart';


class StierList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: StierListMobile(),
      desktop: StierListDesktop(),
      tablet: StierListTablet(),
    );
  }
}