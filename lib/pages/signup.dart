import 'package:blog/service/blogservice.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String result="",getname="",getage="",getph="",getaddress="",getpin="",getemail="",gitpass="";
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController ph=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController pin=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  @override
  Widget build(BuildContext context) {

    void SendValuetoApi() async
    {
      final response =await Blogapi().sendData(name.text, age.text, ph.text,address.text,pin.text,email.text,pass.text);
      if (response["status"] == "success") {

        print("Successfully added");

      }
      else{
        print("error");
      }
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "name",
                  hintText: "enter your name",
                  border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: age,
                decoration: InputDecoration(
                    labelText: "age",
                    hintText: "enter your age",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: ph,
                decoration: InputDecoration(
                    labelText: "ph no",
                    hintText: "enter your number",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: address,
                decoration: InputDecoration(
                    labelText: "address",
                    hintText: "enter your address",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: pin,
                decoration: InputDecoration(
                    labelText: "pin",
                    hintText: "enter your pincode",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "email",
                    hintText: "enter your name",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "enter your password",
                    border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: SendValuetoApi
                  ,child: Text("Register")
              ),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }
                  ,child: Text("back to login")),

            ],
          ),
        ),
      ),
    );
  }
}
