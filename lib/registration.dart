import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Masukkan Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan email Anda';
                  }
                  // Tambahkan validasi email lainnya jika diperlukan
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Masukkan Password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan password Anda';
                  }
                  // Tambahkan validasi password lainnya jika diperlukan
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Masukkan kembali Password'),
                validator: (value) {
                  if (value != _passwordController.text) {
                    return 'Password tidak sama';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proses pendaftaran di sini, misalnya mengirim data ke server
                    // ...
                    print('Email: ${_emailController.text}');
                    print('Password: ${_passwordController.text}');
                  }
                },
                child: Text('Daftar'),
              ),
              TextButton(
                onPressed: () {
                  // Navigasi ke halaman login
                },
                child: Text('Sudah memiliki akun? Masuk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}