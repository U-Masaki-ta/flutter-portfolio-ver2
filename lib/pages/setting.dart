import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    final isSwithed = Provider.of<MyTheme>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Setting'),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                title: const Text('Dark Mode'),
                initialValue: isSwithed.isDark,
                onToggle: ((value) {
                  isSwithed.isDark = value;
                }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
