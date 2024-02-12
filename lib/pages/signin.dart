import 'package:blog/pages/signup.dart';
import 'package:blog/service/blogservice.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              TextField(

                decoration: InputDecoration(
                  labelText: "EMAIL ID",
                  hintText: "enter your email id",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(

                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  hintText: "enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),

              ElevatedButton(onPressed:(){},
               child: Text("login")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));


                  },
  child: Text("NEW USER")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
