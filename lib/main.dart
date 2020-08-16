import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'artifacts/artifacts_brain.dart';
import 'artifacts/artifacts_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArtifactBrain>(
      create: (context) => ArtifactBrain(),
      child: MaterialApp(
          title: 'TT2 Fans',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: TextTheme(
                bodyText2: TextStyle(
                  color: Colors.white70
                ),
              )
          ),
           home: ArtifactsView(),
      ),
    );
  }
}