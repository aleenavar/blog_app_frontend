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
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Email id",
                hintText: "Enter the email id"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText:"Password",
                hintText: "Enter your password"
              ),
            ),
            ElevatedButton(onPressed: ()
                {

                }, child:Text("LOGIN"))
          ],
        ),
      ),

    ),
    );
  }
}
