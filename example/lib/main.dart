import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:flutter_gcaptcha_v3/web_view.dart';

void main() {
  // STEP: 1
  // Initialize your data site key
  // Should be called at main to setup the site key
  //
  //TO VERY TOKEN: USE THE SECRETE: 6LcXCvspAAAAAP-an5GPf2pLueo34ajUTS4r5zej
  RecaptchaHandler.instance
      .setupSiteKey(dataSiteKey: '6LcXCvspAAAAAN5xfINmiaK1A6JqeBO5MKj-A5mO');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Awesome App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "flutter_gcaptcha_v3",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 202,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                IgnorePointer(
                  ignoring: true,
                  child: ReCaptchaWebView(
                    width: double.maxFinite,
                    height: 200,
                    onTokenReceived: _onTokenReceived,
                    url: 'https://easy-going-pigeon.static.domains/index.html',
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              RecaptchaHandler.executeV3(action: 'login');
            },
            child: const Text('submit'),
          ),
          ElevatedButton(
            onPressed: () {
              log('Stored Token ${RecaptchaHandler.instance.captchaToken}');
            },
            child: const Text('Stored Token'),
          )
        ],
      ),
    );
  }

  /// STEP: 3
  /// After calling [RecaptchaHandler.executeV3()] you will receive the [token]
  /// Verify your Token using the server

  _onTokenReceived(String token) {
    print("FINAL TOKEN===> $token");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: SelectableText(token),
            ),
          ),
          duration: const Duration(seconds: 10)),
    );
  }

  /// STEP: 2
  /// Execute the Recaptcha V3  using this method call

  void execute({String? action}) => RecaptchaHandler.executeV3(action: action);
}
