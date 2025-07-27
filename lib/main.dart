import 'package:flutter/material.dart';
import 'package:p6_multi_provider_ex/provider/example_one_provider.dart';
import 'package:p6_multi_provider_ex/screen/example_one.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this is single provider
    return MultiProvider(
      providers: [
        // Multiple Provider use
        // ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ExampleOneScreen(),
      ),
    );
  }
}

