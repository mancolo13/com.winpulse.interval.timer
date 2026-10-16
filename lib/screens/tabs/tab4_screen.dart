import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Workout Records')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(20)),
            child: const Column(
              children: [
                Text('WEEKLY TRAINING VOLUME', style: TextStyle(fontSize: 12, color: Colors.white60, letterSpacing: 1.2)),
                SizedBox(height: 8),
                Text('148 Mins', style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900, color: AppTheme.secondaryColor)),
                SizedBox(height: 6),
                Text('🔥 1,420 kcal burned this week', style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => RoutingService.openRegistrationUrl(),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
            child: const Text('Unlock Custom Audio Packs & Unlimited Routines'),
          ),
        ],
      ),
    );
  }
}

