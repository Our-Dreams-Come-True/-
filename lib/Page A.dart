
import 'package:flutter/material.dart';



enum ColorpageA1 {redA,greenA}
enum ColorpageA2 {redA2,greenA2}


class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  ColorpageA1? _Colorpagea = ColorpageA1.redA;
  ColorpageA2? _Colorpage2 = ColorpageA2.redA2;
  bool containercolor =false;

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          color: _Colorpagea == ColorpageA1.redA ? Colors.redAccent : Colors.green,
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                    SizedBox(width: 100,),
                    Text(
                        'Page A',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Page A'),style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),

                  ),
                  Container(width: 80,
                    height: 40,
                    child: Row(children: [Radio<ColorpageA1>(value: ColorpageA1.redA, groupValue: _Colorpagea, onChanged: (ColorpageA1? valuea) {
                      setState(() {
                        _Colorpagea = valuea;

                      });
                    },),

                      Text('빨강'),],),),

                  Container(width: 80,
                    height: 40,
                    child: Row(children: [Radio<ColorpageA1>(value: ColorpageA1.greenA, groupValue: _Colorpagea, onChanged: (ColorpageA1? valuea2) {
                      setState(() {
                        _Colorpagea = valuea2;
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
                    child: Row(children: [Radio<ColorpageA2>(value: ColorpageA2.redA2, groupValue: _Colorpage2, onChanged: (ColorpageA2? value) {
                      setState(() {
                        _Colorpage2 = value;
                      });
                    },),

                      Text('빨강',style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),),],),),

                  Container(width: 80,
                    height: 40,
                    child: Row(children: [Radio<ColorpageA2>(value: ColorpageA2.greenA2, groupValue: _Colorpage2, onChanged: (ColorpageA2? value) {
                      setState(() {
                        _Colorpage2 = value;
                      });
                    },),

                      Text('초록',style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),),],),),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
