import 'package:flutter/material.dart';

class MonitoredSkillAssessmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Monitored Skill Assessment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'AI-Monitored Skill',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) {
                  return LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
                  ).createShader(bounds);
                },
                child: Text(
                  'Elevate Your Skill Assessment with AI Insights',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Unlock your true potential with our AI-powered skill assessment tools, providing deep insights and performance analysis to help you excel in your career.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              SectionTitle(
                title: 'Key Features',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              MonitoredSkillCard(
                icon: Icons.leaderboard,
                title: 'Leaderboard',
                description: 'Compete with others and track your performance on the global leaderboard.',
              ),
              SizedBox(height: 10),
              MonitoredSkillCard(
                icon: Icons.calendar_today,
                title: 'Scheduled Test',
                description: 'Access scheduled skill assessment tests tailored to your expertise.',
              ),
              SizedBox(height: 10),
              MonitoredSkillCard(
                icon: Icons.score,
                title: 'Scoring Result',
                description: 'Receive instant AI-generated scoring and feedback on your test performance.',
              ),
              SizedBox(height: 10),
              MonitoredSkillCard(
                icon: Icons.description,
                title: 'Mock Test',
                description: 'Practice with realistic mock tests to hone your skills and gain confidence.',
              ),
              SizedBox(height: 10),
              MonitoredSkillCard(
                icon: Icons.help_outline,
                title: 'How It Works',
                description: 'Learn how our AI technology revolutionizes the skill assessment process.',
            ),
           ],
         ),
       ),
      ),
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
          decorationColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}

class MonitoredSkillCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  MonitoredSkillCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
          leading: Icon(
            icon,
            color: Colors.deepPurpleAccent,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
        ),
    );
  }
}

