import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:flutter_gcaptcha_v3/web_view.dart';

void main() {
  /// STEP: 1
  /// Initialize your data site key
  /// Should be called at main to setup the site key
  RecaptchaHandler.instance
      .setupSiteKey(dataSiteKey: '6LdhmrEnAAAAAK4N5LVrQHqzlVXKER6nLhj3ooRJ', useCustomAction: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_gcaptcha_v3',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const MyHomePage(),
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
    return Column(
      children: [
        ReCaptchaWebView(
          width: 200,
          height: 22,
          webViewColor: null,
          onTokenReceived: _onTokenReceived,
          url: 'https:yourdomain.com/index.html',
          onError: (String error) {},
        ),
        ElevatedButton(
          onPressed: _execute,
          child: const Text('submit'),
        )
      ],
    );
  }

  /// STEP: 3
  /// After calling [RecaptchaHandler.executeV3()] you will receive the [token]
  /// Verify your Token using the server

  _onTokenReceived(String token) {
    log("Obtained TOKEN===> $token");
  }

  /// STEP: 2
  /// Execute the Recaptcha V3  using this method call

  void _execute() => RecaptchaHandler.executeV3();
}
