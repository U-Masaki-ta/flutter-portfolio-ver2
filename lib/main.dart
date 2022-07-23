import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/setting.dart';
import 'package:portfolio/customtheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyTheme(),
      child: Consumer<MyTheme>(builder: (context, theme, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme.current,
          home: const MyHomePage(),
        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Setting(),
                ),
              );
              //Provider.of<MyTheme>(context, listen: false).toggle();
            },
          ),
        ],
      ),
    );
  }
}
