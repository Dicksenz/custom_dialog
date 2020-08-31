import 'package:custom_dialog/custom_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom dialog box '),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => CustomDialog(
                content: Text(
                  'No Access',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
                title: Text('Error'),
                firstColor: Colors.red,
                secondColor: Colors.white,
                headerIcon: Icon(
                  Icons.error_outline,
                  size: 120.0,
                  color: Colors.white,
                ),
              ),
            );
          },
          child: Text('Press'),
        ),
      ),
    );
  }
}
