import 'package:flutter/material.dart';

class PageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Row'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Text("Hallo "),
              color: Colors.lime,
              padding: EdgeInsets.all(16.0),
            ),

//            Container(
//
//              child: Text("Selamat Datang "),
//              color: Colors.purple,
//              padding: EdgeInsets.all(16.0),
//            ),

            Container(
              child: Text("di Flutter "),
              color: Colors.purple,
              padding: EdgeInsets.all(16.0),
            ),

            Container(
              color: Colors.lime,
              child: InkWell(
                child: Text(
                  'Tap Inkwell',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffe41749)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              child: MaterialButton(
                textColor: Colors.white,
                color: Colors.purple,
                child: Text('Back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              //button
              //inkwell
            )
          ],
        ),
      ),
    );
  }
}
