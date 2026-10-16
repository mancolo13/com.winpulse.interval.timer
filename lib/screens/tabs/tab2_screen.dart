import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final routines = [
      {'title': 'Classic Tabata 20/10', 'sub': '4 Minutes • 8 Rounds • Max Intensity', 'tag': 'HIIT'},
      {'title': 'Boxing Sparring 3m/1m', 'sub': '15 Minutes • 5 Rounds • Agility', 'tag': 'Combat'},
      {'title': 'EMOM Sprint Circuit', 'sub': '12 Minutes • Every Min On Minute', 'tag': 'CrossFit'},
      {'title': 'Core Ab Burner 30/15', 'sub': '10 Minutes • Core Isometric Holds', 'tag': 'Core'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Routine Presets')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: routines.length,
        itemBuilder: (context, i) {
          final r = routines[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                  child: const Icon(Icons.flash_on, color: AppTheme.primaryColor),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(r['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 4),
                      Text(r['sub']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Load'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

