
import 'dart:convert';

import 'package:blog/pages/model/blogmodel.dart';
import 'package:http/http.dart' as http;


class Blogapi{

  Future<dynamic> sendData(
      String name,
      String age,
      String phno,
      String address,
      String pin,
      String email,
      String password

      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.184.225:3001/users/signup");

    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "name":name,
          "age":age,
          "phoneno":phno,
          "address":address,
          "pincode":pin,
          "email":email,
          "password":password

        })

    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }
  Future<Object> getPosts() async{
    var client =http.Client();
    var apiUrl=Uri.parse("http://172.16.184.225:3001/users/view");
    var response = await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return blogFromJson(response.body);
    }
    else
    {
      return [];
    }

  }


}