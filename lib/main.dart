import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:brightapp/controllers/auth_controller.dart';
import 'package:brightapp/pages/home_page.dart';
import 'package:brightapp/pages/login_page.dart';
import 'package:brightapp/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BrightApp());
}

class BrightApp extends StatelessWidget {
  const BrightApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthController>(
      create: (_) => AuthController(),
      child: MaterialApp(
        title: 'BrightApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/login', // Set the initial route
        routes: routes, // Define your routes here
      ),
    );
  }
}
