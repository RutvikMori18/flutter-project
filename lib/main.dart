import 'package:bloc_example/repository/repo.dart';
import 'package:bloc_example/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //inject the repo which will use bloc
      home: RepositoryProvider(
          create: (context) => Userdata(), child: const HomePage()),
    );
  }
}
