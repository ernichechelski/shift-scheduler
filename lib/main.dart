import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shift Scheduler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shift Scheduler'),
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(children: [
            const Padding(padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 0)),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            const Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0)),
            const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
              size: 250,
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 120),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.blueAccent,
                  ),
                )),
            const Padding(padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0)),
          ]),
        ),
      ),
    );
  }
}
