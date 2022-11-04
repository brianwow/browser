import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(size: 18.0, color: Colors.white),
      ),
      home: const MyHomePage(homepage: 'http://127.0.0.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.homepage});
  final String homepage;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.text = widget.homepage;

    final addressBar = TextField(
      controller: _controller,
      style: const TextStyle(fontSize: 13),
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      autofocus: true,
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              child: Text(
                'Hello World',
              ),
            ),
            Container(
              color: Colors.black38,
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => debugPrint("Hellow"),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: null,
                  ),
                  const Icon(Icons.lock),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: addressBar),
                  ),
                  IconButton(
                    icon: const Icon(Icons.star_border),
                    onPressed: () => debugPrint("Hellow"),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => debugPrint("Hellow"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
