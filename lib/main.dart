import 'package:flutter/material.dart';

import 'pages/xylophone_page.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: const XyloPhonePage(),
    );
  }
}
