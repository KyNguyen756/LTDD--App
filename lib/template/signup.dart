import 'package:demo/template/signin.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget{

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup>{
  bool isTraveler = true;

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
                children: [
                    Row(
                      children: [Text("Sign up",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ChoiceChip(
                        label: Text("Traveler"),
                        selected: isTraveler,
                        onSelected: (selected) {
                        setState(() {
                        isTraveler = true;
                        });
                      },
                    ),
                      SizedBox(width: 20),
                      ChoiceChip(
                        label: Text("Guide"),
                        selected: !isTraveler,
                        onSelected: (selected) {
                          setState(() {
                            isTraveler = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                        decoration: InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(),
                        ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                        decoration: InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(),
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Country", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                    labelText: "Country",
                    border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    helperText: "Password has more than 6 letters",
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                    ),
                  obscureText: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "By Signing Up, you agree to our Terms & Conditions",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50), // Full width button, adjust height as needed
                    backgroundColor: Color(0xFF00CEA6), // Background color
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3), // Border radius
                    ),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                      color: Colors.white, // White text
                      ),
                    ),
                  )),
                  SizedBox(height: 40,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Text("Already have an account?"),
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
                  SizedBox(height: 50,)
                ],
              ),
            )
          ],
        )
      )
    );
  }
}