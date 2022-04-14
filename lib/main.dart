import 'package:flutter/material.dart';
import 'daftar.dart';
import 'loginberhasil.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Membuat Form ",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Login"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Isikan Password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              RaisedButton(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate())
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginBerhasil();
                      }),
                    );
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              FlatButton(
                child: Text(
                  'Daftar',
                  style: TextStyle(color: Colors.black54),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Daftar();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
