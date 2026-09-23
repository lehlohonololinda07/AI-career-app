import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    super.key,
    required this.streakDays,
    required this.skillsInProgress,
    required this.challengesCompleted,
  });

  final int streakDays;
  final int skillsInProgress;
  final int challengesCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _StatColumn(
              value: '$streakDays',
              label: 'day streak',
              icon: Icons.local_fire_department_outlined,
              color: theme.colorScheme.primary,
            ),
            _StatColumn(
              value: '$skillsInProgress',
              label: 'skills active',
              icon: Icons.trending_up,
              color: theme.colorScheme.primary,
            ),
            _StatColumn(
              value: '$challengesCompleted',
              label: 'challenges done',
              icon: Icons.emoji_events_outlined,
              color: theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  const _StatColumn({
    required this.value,
    required this.label,
    required this.icon,
    required this.color,
  });

  final String value;
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
