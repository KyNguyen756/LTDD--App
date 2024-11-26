import 'package:demo/template/forgot_password.dart';
import 'package:demo/template/main_navigation.dart';
import 'package:demo/template/signup.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget{
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin>{

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
                        Text("Sign In",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 30,),
                        Text("Welcome back, Tuan Tran", style: TextStyle(fontSize: 25,color: Color(0xFF00CEA6)),),
                        SizedBox(height: 15,),
                        Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                        TextField(),
                        SizedBox(height: 15,),
                        Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
                        TextField(obscureText: true,),
                        SizedBox(height: 15,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword())
                            );
                          },
                          child: Text("Forgot your password?", style: TextStyle(color: Colors.green)),
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => navBar())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50), // Full width button, adjust height as needed
                            backgroundColor: Color(0xFF00CEA6), // Background color
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3), // Border radius
                            ),
                          ),
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white, // White text
                            ),
                          ),
                          )

                        ),
                        SizedBox(height: 30,),
                        Center(child: Text('Or Sign in With')),
                        SizedBox(height: 15,),
                        Center(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('img/Group_9.png'),
                            SizedBox(width: 20),
                            Image.asset('img/Group_8.png'),
                            SizedBox(width: 20),
                            Image.asset('img/Group_10.png'),
                          ],
                        ),
                      ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            SizedBox(height: 20,),
                            Text("Don't have account?"),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signup())
                                );
                              },
                              child: Text("Sign up", style: TextStyle(color: Colors.green))
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