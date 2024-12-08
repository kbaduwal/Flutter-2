import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //Variable
  int _counter=0;

  //method
  void _incrementCounter(){
    //setstate rebuild the widget
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //counter
            Text("You pushed the button this many times"),

            //counter value
            Text(_counter.toString(),
            style: TextStyle(fontSize: 40),
              
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
