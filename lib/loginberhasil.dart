import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginBerhasil(),
    ),
  );
}

class LoginBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 600,
            child: Text(
              'Selamat Anda Berhasil Login',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
      ),
    );
  }
}
