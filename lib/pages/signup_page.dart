import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id= "sign up page";
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callSignInPage(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }

  _callHomePage(){
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(193,53,132,1),
                Color.fromRGBO(131,58,180,1),
              ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child:Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //#logo
                    Text("Instagram",style: TextStyle(fontSize: 45,fontFamily: "Billabong",color: Colors.white),),
                    //$email_input
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                        ),
                      ),
                    ),
                    //#password
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: " Confirm Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                        ),
                      ),
                    ),
                    //#signin button
                    GestureDetector(
                      onTap: (){
                        _callHomePage();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text("Sign In", style: TextStyle(fontSize: 17,color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do'nt have an account",style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        _callSignInPage();
                      },
                      child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}