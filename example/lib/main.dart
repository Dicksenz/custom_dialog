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
                  'Payment Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
                title: Text('Health Insurance'),
                firstColor: Color(0xFF3CCF57),
                secondColor: Colors.white,
                headerIcon: Icon(
                  Icons.check_circle_outline,
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
