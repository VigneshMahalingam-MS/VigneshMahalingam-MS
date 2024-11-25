import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider_screen.dart';
import 'package:provider_statemanagement/second_page.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderScreen>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Provider First page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Consumer<ProviderScreen>(
               builder: (context,dinesh,child) {
                 return Text("count---${dinesh.count}");
               }
             ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  provider.increament();
                },
                child: Text('Increament')),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text("Second page")),
          ],
        ),
      ),
    );
  }
}
