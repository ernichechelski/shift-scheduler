import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            startButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/shifts')),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0)),
          ]),
        ),
      ),
    );
  }

  final Text welcomeText = const Text(
    'Shift Scheduler',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 60,
      color: Colors.white,
      fontFamily: 'Pacifico',
    ),
  );

  final Icon welcomeIcon = const Icon(
    Icons.calendar_month_outlined,
    color: Colors.white,
    size: 250,
  );

  ElevatedButton startButton({required Function() onPressed}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        child: const SizedBox(
          width: 320,
          height: 56,
          child: Center(
            child: Text(
              'Start',
              style: TextStyle(
                fontSize: 26,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ));
  }
}
