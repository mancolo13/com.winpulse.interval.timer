import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});
  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  double _volume = 0.8;
  bool _voice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Audio & Haptics')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Beep Volume', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Slider(
                  value: _volume,
                  activeColor: AppTheme.primaryColor,
                  onChanged: (v) => setState(() => _volume = v),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Voice Countdown ("3, 2, 1...")', style: TextStyle(fontSize: 14)),
                    Switch(value: _voice, activeThumbColor: AppTheme.primaryColor, onChanged: (v) => setState(() => _voice = v)),
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Vibration on Intervals', style: TextStyle(fontSize: 14)),
                    Icon(Icons.vibration, color: AppTheme.secondaryColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

