import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(
    MaterialApp(
      home: DaftarBerhasil(),
    ),
  );
}

class DaftarBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 350,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Selamat Anda Berhasil Daftar',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          FlatButton(
            child: Text(
              'kembali ke halaman login',
              style: TextStyle(color: Colors.black54),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BelajarForm();
                }),
              );
            },
          ),
        ]),
      ),
    );
  }
}
