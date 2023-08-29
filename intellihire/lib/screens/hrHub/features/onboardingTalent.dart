import 'package:flutter/material.dart';

class OnboardingTalentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Onboarding and Talent Management'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(
              title: 'Automate Your Candidate\'s Onboarding Process!',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
            SizedBox(height: 10),
            Text(
                'Craft tailored onboarding instructions using Generative AI to welcome and guide new hires smoothly into your organization',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            SizedBox(height: 25),
            OnboardingPromptSection(),
            SizedBox(height: 5),
            TalentManagementSection(),
          ],
        ),
      ),
    );
  }
}

class OnboardingPromptSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollaborationStepCard(
      icon: Icons.school,
      title: 'Onboarding Prompt',
      description: 'Utilize Generative AI to create personalized onboarding instructions for new hires.',
    );
  }
}

class TalentManagementSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollaborationStepCard(
      icon: Icons.rocket,
      title: 'Talent Management',
      description: 'Empower your employees with personalized career development paths.',
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final List<Color> gradientColors;

  SectionTitle({required this.title, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: gradientColors,
        ).createShader(bounds);
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          decorationThickness: 2,
          decorationColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}

class CollaborationStepCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  CollaborationStepCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20), // Added margin for separation
      decoration: BoxDecoration(
        color: Colors.black, // Same color for both boxes
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent.withOpacity(0.3),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
          leading: Icon(
            icon,
            color: Colors.pinkAccent,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.pinkAccent, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
        ),
    );
  }
}
