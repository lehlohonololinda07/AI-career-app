import 'package:flutter/material.dart';
import 'widgets/career_card.dart';
import 'widgets/progress_card.dart';
import 'widgets/roadmap_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProgressCard(
            streakDays: 4,
            skillsInProgress: 3,
            challengesCompleted: 2,
          ),
          SizedBox(height: 16),
          RoadmapCard(
            currentStep: 'Month 1 · Programming fundamentals — '
                'Week 2: Conditions and loops',
            progress: 0.35,
          ),
          SizedBox(height: 24),
          _SectionHeader('Careers you might like'),
          SizedBox(height: 12),
          CareerCard(
            title: 'Software Developer',
            category: 'Technology',
            description:
                'Design, build, and maintain applications and systems. '
                'Strong fit if you enjoy solving logical problems.',
          ),
          SizedBox(height: 12),
          CareerCard(
            title: 'Data Analyst',
            category: 'Technology',
            description:
                'Turn raw data into insights that guide decisions. '
                'Good fit if you like patterns and clear reasoning.',
          ),
          SizedBox(height: 12),
          CareerCard(
            title: 'UX Designer',
            category: 'Creative',
            description:
                'Shape how people experience digital products. '
                'Good fit if you notice what makes things easy to use.',
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
