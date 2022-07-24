import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'My Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
        ),
        title: Text(widget.title),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.favorite),
            tooltip: 'favorite',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'search',
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
            tooltip: 'more',
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text('Increment')),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: _decrementCounter, child: const Text('Decrement')),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Count: $_counter',
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
