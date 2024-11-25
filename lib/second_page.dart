import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/log_screen.dart';
import 'package:provider_statemanagement/provider_screen.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderScreen>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Second page"),
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
                  provider.deccreament();
                },
                child: Text('Decreament')),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogScreen()));
                },
                child: Text("First page")),
          ],
        ),
      ),
    );
  }
}
