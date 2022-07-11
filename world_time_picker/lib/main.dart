import 'package:flutter/material.dart';
import 'package:world_time_picker/pages/choose_location.dart';
import 'package:world_time_picker/pages/home.dart';
import 'package:world_time_picker/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation()
    },
  ));
}
