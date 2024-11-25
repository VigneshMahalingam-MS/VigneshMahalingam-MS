import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/log_screen.dart';
import 'package:provider_statemanagement/provider_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderScreen(),
      child: const MaterialApp( 
        debugShowCheckedModeBanner: false,
        home: LogScreen(),
      ),
    );
  }
}

/* STATEMANAGMENT 
What is statemanagment?
      State management in Flutter is the process of organizing and managing data 
      that determines the visual appearance and behavior of an app's user 
      interface (UI). It's important for building dynamic UIs that accurately reflect 
      the current state of the app.

   PROVIDER
      Provider State Management, which is recommended by Google as well,
      mainly provides you with a central point to manage the state, and to write front-end logic.

      A provider is a third-party library. Here, we need to understand three main concepts to use this library.
      1.Change Notifier

      2.ChangeNotifierprovider

      3.Consumer


 */