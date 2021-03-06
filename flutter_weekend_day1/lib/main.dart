import 'package:flutter/material.dart';
import 'page_row.dart';

void main() => runApp(MyApp());

//idnmantab

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //appbar : awalan kecil : di sebut properti
        //Appbar : awalan gede : class atau widget
        title: Text('Page Home'),
        backgroundColor: Colors.red,

      ),

      body: Center(
        child: Column(
          children: <Widget>[
            
            Container(
              margin: EdgeInsets.all(20.0),
              child: Image.asset('gambar/logo.png', height: 100.0,
                width: 150.0,
              ),
            ),
            Container(
//            margin: EdgeInsets.only(left: 30.0),
              child: MaterialButton(
                onPressed: (){

                  //pindah page
                  //navigator
                  //push : dari class A ke class B
                  //pop : dari class B ke class A

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> PageColumn()
                  ));


                },
                color: Colors.purple,
                textColor: Colors.white,
                child: Text('Column'),
              ),
            ),

            //button
            //materialbutton
            //raised button
            //flat button
            Container(
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> PageRow()
                  ));
                },
                color: Colors.purple,
                textColor: Colors.white,
                child: Text('Row'),
              ),
            )
          ],
        ),

      ),
//      body: Column(
//        children: <Widget>[
//
//
//
//        ],
//      ),
//      body: Container(
//        //menampilkan widget Text
//        child: Text('Hello ini Project Pertama'),
//        color: Colors.yellow,
//        padding: EdgeInsets.all(16),
//
//        //kasih jarak
//        //padding : kasih antar properti didalam object
//        //margin : jarak antar widget
//        //child : cuma bisa 1 widget
//        //children : bisa lebih dari 1 widget (column, row, listview)
//
//      ),
    );
  }
}

class PageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Column'),
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(12),
              child: Text("Hallo "),
              color: Colors.lime,
              padding: EdgeInsets.all(16.0),
            ),

            Container(
              margin: EdgeInsets.all(12),
              child: Text("Selamat Datang "),
              color: Colors.purple,
              padding: EdgeInsets.all(16.0),
            ),


            Container(
              margin: EdgeInsets.all(12),
              child: Text("di Flutter "),
              color: Colors.purple,
              padding: EdgeInsets.all(16.0),
            ),
          ],

        ),
      ),
    );
  }
}









