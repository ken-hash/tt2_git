import 'package:flutter/material.dart';

class TT2BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.05,
      color: Colors.red[300],
      child: Center(
        child: Text(
          'Disclaimer'
        ),
      ),
    );
  }
}
