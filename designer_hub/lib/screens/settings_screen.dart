
import 'package:flutter/material.dart';
import '../services/settings_service.dart';
import '../models/settings_model.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final SettingsService _settingsService = SettingsService();
  late Future<SettingsModel> _settings;

  @override
  void initState() {
    super.initState();
    _settings = _settingsService.getSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: FutureBuilder<SettingsModel>(
        future: _settings,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final settings = snapshot.data!;
            return ListView(
              children: [
                SwitchListTile(
                  title: Text('Enable Notifications'),
                  value: settings.notificationsEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      settings.notificationsEnabled = value;
                    });
                  },
                ),
                ListTile(
                  title: Text('Theme'),
                  subtitle: Text(settings.theme),
                  onTap: () {
                    // Handle theme change
                  },
                ),
              ],
            );
          } else {
            return Center(child: Text('No settings available'));
          }
        },
      ),
    );
  }
}
    