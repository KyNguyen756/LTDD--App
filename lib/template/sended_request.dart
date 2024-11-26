import 'package:demo/template/signin.dart';
import 'package:flutter/material.dart';

class SendedRequest extends StatefulWidget{
  @override
  _SendedRequest createState() => _SendedRequest();
}

class _SendedRequest extends State<SendedRequest>{

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF00CEA6),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
            padding: EdgeInsets.only(top: 40, left: 20,right: 20),
            child: Image.asset('img/Group_3.png'),
            ),
            SizedBox(height: 20,),
            Expanded(child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 20,right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.vertical(
                        top: Radius.elliptical(635, 135)
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Check Email",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 30,),
                        Text("Please check your email for the instructions on how to reset your password.", style: TextStyle(fontSize: 16,),),
                        SizedBox(height: 15,),
                        Center(
                          child: Image.asset('img/envelope.png'),
                        ),
                        SizedBox(height: 100,),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            SizedBox(height: 20,),
                            Text("Back to "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signin())
                                );
                              },
                              child: Text("Sign in", style: TextStyle(color: Colors.green))
                            )
                          ],),
                        )
                      ],
                    ),
                  ),
                  
                ],
              )           
            )
            
          ],
          
        )
        
      ),
    );

  }
}