import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ok_auth/ok_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  OkAuthResponse? _response;
  final _okAuthPlugin = OkAuth();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> login() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      _response = await _okAuthPlugin.login();
    } on OkAuthException catch (e) {
      switch (e) {
        case OkAuthErrorException():
          print(e);

          break;
        case OkAuthCancelException():
          return;
      }
    }
    _response = null;
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Text('Running on: $_response\n'),
            TextButton(onPressed: login, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
