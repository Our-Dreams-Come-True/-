import 'package:flutter/material.dart';



enum Colorchange {red,green}
enum Colorchange2 {red2,green2}
class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {

  Colorchange? _Colorchange = Colorchange.red;
  Colorchange2? _Colorchange2 = Colorchange2.red2;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          color: _Colorchange2 == Colorchange2.red2 ? Colors.redAccent : Colors.green,
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
                      'Page  B',
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

                      Text('빨강',style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),),],),),

                  Container(width: 80,
                    height: 40,
                    child: Row(children: [Radio<Colorchange>(value: Colorchange.green, groupValue: _Colorchange, onChanged: (Colorchange? value) {
                      setState(() {
                        _Colorchange = value;
                      });
                    },),

                      Text('초록',style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),),],),),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Page B'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),),
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
      ),
    );
  }
}
