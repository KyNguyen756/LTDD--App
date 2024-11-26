import 'package:demo/template/sended_request.dart';
import 'package:flutter/material.dart';

class Explore_Screen extends StatefulWidget{
  @override
  _Explore_Screen createState() => _Explore_Screen();
}

class _Explore_Screen extends State<Explore_Screen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
    body: SingleChildScrollView(
    child:  Column(
     children: [
      header(),
      SizedBox(height: 25,),
      TitleWithMore(
        title: "Tours in Da Nang",
        press: () {},
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Card_1(img: "img/HoiAn.jpg", title: "Da Nang - Ba Na - Hoi An", day: "Jan 30, 2020", time: 3, cost: 400, press: () {},),
            Card_1(img: "img/ThaiLan.jpg", title: "Thailand", day: "Jan 30, 2020", time: 3, cost: 600, press: () {},),
            Card_1(img: "img/HoiAn.jpg", title: "Da Nang - Ba Na - Hoi An", day: "Jan 30, 2020", time: 3, cost: 400, press: () {},),
          ],
          
        ),
      )
     ],
    ),
    )
    ); 
  }
}

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    required this.title,
    required this.press,
    super.key,
  });
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Text("$title", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          Spacer(),
          GestureDetector(
            onTap: press(),
            child: Text("SEE MORE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF00CEA6)),),
          )
        ],
      ),
      );
  }
}

class header extends StatefulWidget{

  @override
  _header createState() => _header();  
}

class _header extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF00CEA6),
                
              ),
              child: Row(
                children: [
                  Text("Explore", style: TextStyle(fontSize: 40, color: Colors.white),),
                  Spacer(),
                  Text("Da Nang", style: TextStyle(fontSize: 20, color: Colors.white),)
                ],
              ),
            ),
            
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.grey.shade400
                    )
                  ]
                ),
                child: Row(
                  children: <Widget>[
                    
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          suffixIcon: Image.asset('img/Vector.png'),
                          hintText: "Hi, where do you want to explore?",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      )
                    )
                  ],
                )
              ),
            )
          ],
        ),
      );
  }
}

class Card_1 extends StatelessWidget {
  const Card_1({
    required this.title,
    required this.day,
    required this.img,
    required this.time,
    required this.cost,
    required this.press,
    super.key,
  });

  final String title, day, img;
  final int time, cost;
  final Function press;
  @override
  Widget build (BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 50
      ),
      width: size.width * 0.6,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
            child: Image.asset("$img"),
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xFF00CEA6).withOpacity(0.23)
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: "Day: $day\n",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        TextSpan(
                          text: "Time: $time Days\n\n",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        TextSpan(
                          text: "\$$cost" ,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF00CEA6)
                          )
                        ),
                      ]
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}