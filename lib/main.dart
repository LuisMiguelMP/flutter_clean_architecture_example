import 'package:flutter/material.dart';

import 'src/domain/ui/pages/regions/region_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegionPage(),
    );
  }
}
