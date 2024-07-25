import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  const Condition({super.key});

  @override
  State<Condition> createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  bool isLoggedIn = false;

  void toggleLogin() {
    setState(() {
      isLoggedIn = !isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              isLoggedIn ? 'Welcome back, User!' : 'Please log in.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleLogin,
              child: Text(isLoggedIn ? 'Log out' : 'Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
