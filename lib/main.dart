import 'package:flutter/material.dart';
import 'package:portfolio/pages/profile.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/pages/setting.dart';
import 'package:portfolio/theme.dart';

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

class MainTab {
  String label;
  Widget widget;
  MainTab(this.label, this.widget);
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final List<MainTab> _tab = [
    MainTab('Profile', const ProfileWidget()),
    MainTab('Achieves', const Setting()),
    MainTab('Studying', const Setting()),
    MainTab('Contact', const Setting()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
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
              },
            ),
          ],
          bottom: TabBar(
            labelColor: customSwatch.shade50,
            unselectedLabelColor: Colors.black87,
            indicatorColor: customSwatch,
            tabs: _tab.map((MainTab tab) {
              return Tab(
                text: tab.label,
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: _tab.map((tab) => tab.widget).toList(),
        ),
      ),
    );
  }
}
