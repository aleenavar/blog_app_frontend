// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

Blog blogFromJson(String str) => Blog.fromJson(json.decode(str));

String blogToJson(Blog data) => json.encode(data.toJson());

class Blog {
  String name;
  String age;
  String phoneno;
  String address;
  String pincode;
  String emailid;
  String password;

  Blog({
    required this.name,
    required this.age,
    required this.phoneno,
    required this.address,
    required this.pincode,
    required this.emailid,
    required this.password,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    name: json["name"],
    age: json["age"],
    phoneno: json["phoneno"],
    address: json["address"],
    pincode: json["pincode"],
    emailid: json["emailid"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "phoneno": phoneno,
    "address": address,
    "pincode": pincode,
    "emailid": emailid,
    "password": password,
  };
}
