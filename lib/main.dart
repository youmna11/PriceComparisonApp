import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/firebase_options.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context)=> MyProvider(),
      child: const MyApp()));
}



