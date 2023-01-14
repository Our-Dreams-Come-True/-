import 'package:dreamcomesstudy/Page%20A.dart';
import 'package:dreamcomesstudy/Page%20B.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pageA': (context) => PageA(),
        '/pageB' :(context) =>PageB(),

      },


    );
  }
}
enum Colorchange {red,green}
enum Colorchange2 {red2,green2}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Colorchange? _Colorchange = Colorchange.red;
  Colorchange2? _Colorchange2 = Colorchange2.red2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(height: 150,
              width: double.infinity,
              color: _Colorchange==Colorchange.red ? Colors.redAccent : Colors.green,
              child: Text('Page A',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30,
              ),),),
            ),
            SizedBox(height: 30,),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'H O M E',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {

                       Navigator.pushNamed(context, '/pageA');

                      }, child: Text('Page A')),
                      Container(width: 80,
                      height: 40,
                      child: Row(children: [Radio<Colorchange>(value: Colorchange.red, groupValue: _Colorchange, onChanged: (Colorchange? value) {
                        setState(() {
                          _Colorchange = value;
                        });
                      },),

                        Text('빨강'),],),),

                      Container(width: 80,
                        height: 40,
                        child: Row(children: [Radio<Colorchange>(value: Colorchange.green, groupValue: _Colorchange, onChanged: (Colorchange? value) {
                          setState(() {
                            _Colorchange = value;
                          });
                        },),

                          Text('초록'),],),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, '/pageB');

                      }, child: Text('Page B')),
                      Container(width: 80,
                        height: 40,
                        child: Row(children: [Radio<Colorchange2>(value: Colorchange2.red2, groupValue: _Colorchange2, onChanged: (Colorchange2? value) {
                          setState(() {
                            _Colorchange2 = value;
                          });
                        },),

                          Text('빨강'),],),),

                      Container(width: 80,
                        height: 40,
                        child: Row(children: [Radio<Colorchange2>(value: Colorchange2.green2, groupValue: _Colorchange2, onChanged: (Colorchange2? value) {
                          setState(() {
                            _Colorchange2 = value;
                          });
                        },),

                          Text('초록'),],),),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(height: 150,
              width: double.infinity,
              color: _Colorchange2==Colorchange2.red2 ? Colors.redAccent : Colors.green,
              child: Text('Page B',style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold
              ),),),
            ),
          ],
        ),

    );

  }
}




