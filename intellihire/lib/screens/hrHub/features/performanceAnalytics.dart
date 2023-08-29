import 'package:flutter/material.dart';

class PerformanceAnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Performance Analytics'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(
              title: 'Performance Analytics',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
            SizedBox(height: 10),
            Text(
              'Gain insights into team and individual performance with advanced analytics.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            SectionTitle(
              title: 'Overview and Analytics',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
            SizedBox(height: 20),
            PerformanceCard(
              title: 'Recruitment Metrics',
              description: 'View key recruitment performance metrics and trends.',
              icon: Icons.analytics,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Candidate Demographics',
              description: 'Explore the demographic distribution of your candidate pool.',
              icon: Icons.people,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Application Funnel',
              description: 'Analyze the progression of applications at each stage.',
              icon: Icons.timeline,
            ),
            SizedBox(height: 30),
            SectionTitle(
              title: 'Candidate Analysis',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
            SizedBox(height: 20),
            PerformanceCard(
              title: 'Behavioral Analysis',
              description: 'Assess candidate behavior and suitability for roles.',
              icon: Icons.psychology,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Skills Assessments',
              description: 'Evaluate candidates\' skills alignment with job requirements.',
              icon: Icons.star,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Interview Evaluation',
              description: 'Review interview performance and feedback.',
              icon: Icons.record_voice_over,
            ),
            SizedBox(height: 30),
            SectionTitle(
              title: 'AI Hiring Prediction',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
            SizedBox(height: 20),
            Text(
              'The AI-powered system will provide hiring recommendations:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Strong Hire',
              description: 'Highly recommended candidate for hiring.',
              icon: Icons.check_circle,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Hire',
              description: 'Recommended candidate for hiring.',
              icon: Icons.check,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'No Hire',
              description: 'Not recommended for hiring.',
              icon: Icons.close,
            ),
            SizedBox(height: 10),
            PerformanceCard(
              title: 'Strong No Hire',
              description: 'Strongly not recommended for hiring.',
              icon: Icons.cancel,
            ),
          ],
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
          decorationColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}

class PerformanceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  PerformanceCard({
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
            color: Colors.pink.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
