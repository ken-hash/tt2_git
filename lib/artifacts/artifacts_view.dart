import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tt2mvp/artifacts/artifacts_desktop.dart';
import 'artifacts_mobile.dart';
import 'artifacts_tablet.dart';


class ArtifactsView extends StatelessWidget {

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ArtifactsViewMobile(),
      tablet: ArtifactsViewTablet(),
      desktop: ArtifactsViewDesktop(),
    );
  }
}
