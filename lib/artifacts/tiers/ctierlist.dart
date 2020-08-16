import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tt2mvp/artifacts/tiers/ctierlist_desktop.dart';
import 'package:tt2mvp/artifacts/tiers/ctierlist_tablet.dart';
import 'ctierlist_mobile.dart';

class CtierList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CtierListMobile(),
      desktop: CtierListDesktop(),
      tablet: CtierListTablet(),
    );
  }
}
