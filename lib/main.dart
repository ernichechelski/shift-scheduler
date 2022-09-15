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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 0)),
            welcomeText,
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0)),
            welcomeIcon,
            const Spacer(),
            startButton,
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0)),
          ]),
        ),
      ),
    );
  }

  Text welcomeText = const Text(
    'Shift Scheduler',
    style: TextStyle(
      fontSize: 60,
      color: Colors.white,
      fontFamily: 'Pacifico',
    ),
  );

  Icon welcomeIcon = const Icon(
    Icons.calendar_month_outlined,
    color: Colors.white,
    size: 250,
  );

  ElevatedButton startButton = ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 160),
      ),
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 26,
          color: Colors.blueAccent,
        ),
      ));
}
