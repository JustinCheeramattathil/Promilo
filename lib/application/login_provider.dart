// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:promilo/domain/models/api_model.dart';
import 'package:promilo/infrastructure/api_repository.dart';
import 'package:promilo/presentation/home/home_screen.dart';
/// Register the login repository in this provider class 
class ApiProvider extends ChangeNotifier {
  final _apiRepository = ApiRepository(Dio());

  Future<void> postData(ApiModel apiModel, BuildContext context) async {
    try {
      await _apiRepository.postData(apiModel);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Login successful'),
        ),
      );
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Invalid ID or Password'),
        ),
      );
      
    }
  }
}
