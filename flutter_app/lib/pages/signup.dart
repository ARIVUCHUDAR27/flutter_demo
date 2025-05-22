import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/widget_support.dart';
import 'package:flutter_app/pages/bottomnav.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email="", password="", name="";
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey= GlobalKey<FormState>();

  registration() async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance. createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      ScaffoldMessenger.of(context).showSnackBar((SnackBar(backgroundColor:Colors.redAccent, content: Text("Registration Successful", style:TextStyle(fontSize: 20.0,)))));

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav()));
    }on FirebaseException catch(e){
      if(e.code=='weak-password'){
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(content: Text("Password is too weak", style:TextStyle(fontSize: 20.0,)))));
      }
      else if(e.code=='email-already-in-use'){
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(content: Text("Email is already in use", style:TextStyle(fontSize: 20.0,)))));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(backgroundColor: Colors.redAccent, content:Text("Error", style:TextStyle(fontSize: 20.0,)))));
      }
    }
      
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff5c30), Color(0xFFe74b1a)],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 3,
              ),
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 30.0),
                            Text(
                              "Sign Up",
                              style: AppWidget.HeaderTextFieldStyle(),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: nameController,
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Please enter your name";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.person_outlined),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: emailController,
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Please enter your email";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.email_outlined),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: passwordController,
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Please enter your password";
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.password_outlined),
                              ),
                            ),
                        
                            SizedBox(height: 40.0),
                            GestureDetector(
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  setState(() {
                                    name = nameController.text;
                                    email = emailController.text;
                                    password = passwordController.text;
                                  });
                                  registration();
                                }
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0Xffff5722),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: 'Poppins1',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LogIn(),
                                  ),
                                );
                              },
                              child: Text(
                                "Already have an account? Login",
                                style: AppWidget.SemiBoldTextFieldStyle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
