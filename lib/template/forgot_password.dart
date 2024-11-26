import 'package:demo/template/sended_request.dart';
import 'package:demo/template/signin.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget{

  @override
  _ForgotPassword createState() => _ForgotPassword();

}

class _ForgotPassword extends State<ForgotPassword>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF00CEA6),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40, left: 20,right: 20),
                  child: Image.asset('img/Group_3.png'),
                ),
              ],
            ),
            SizedBox(height: 20,),
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
                  Row(
                      children: [Text("Forgot Password",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),],
                    ),
                    SizedBox(height: 30,),
                    Text("Input your email, we will send you an instruction to reset your password.", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                      ]
                    ),
                    TextField(
                      decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SendedRequest())
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
                          "CONFIRM",
                          style: TextStyle(
                            color: Colors.white, // White text
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 50,),
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
                        ),
                        SizedBox(height: 220,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}