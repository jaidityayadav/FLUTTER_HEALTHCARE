import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/database/app/main.java';
import 'package:http/http.dart' as http;
import 'package:medicare/consts/consts.dart';
import 'package:medicare/views/home_view/home.dart';

Future<Map<String, dynamic>> fetchEmailAndPassword() async {
  final response = await http.get(Uri.parse('http://localhost/phpmyadmin/doctor'));

  if (response.statusCode == 200) {
    Get.to(()=> Home());
  } else {
    
    throw Exception('Failed to load email and password data');
    
  }
}

void main() async {
  try {
    final data = await fetchEmailAndPassword();
    
  } catch (e) {
    print('Error: $e');
  }
}





