import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:flutter_gcaptcha_v3/web_view.dart';

void main() {
  /// Initialize your data site key
  RecaptchaHandler.instance.setupSiteKey(dataSiteKey: 'YOUR-DATA-SITE-KEY');
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
        ),
        ElevatedButton(
          onPressed: execute,
          child: const Text('submit'),
        )
      ],
    );
  }

  // After calling [RecaptchaHandler.executeV3()] you will receive the [token]
  // Verify your Token using the server
  _onTokenReceived(String token) {
    print("FINAL TOKEN===> $token");
  }

  // Execute the Recaptcha V3  using this method call
  void execute() => RecaptchaHandler.executeV3();
}
