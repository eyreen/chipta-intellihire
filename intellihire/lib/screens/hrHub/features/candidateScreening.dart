import 'package:flutter/material.dart';

class CandidateScreeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Candidate Screening'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'AI-powered Candidate Screening',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 10),
              Text(
                'Accelerates the selection process by intelligently identifying the best-fit candidates based on skill sets and qualifications.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              SectionTitle(
                title: 'Features Selection',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              FeaturesSelectionCard(
                icon: Icons.list_alt,
                feature: 'Resume Ranking',
                description: 'Leverage AI to rank and evaluate applicant resumes based on job requirements and relevant skills.',
              ),
              SizedBox(height: 10),
              FeaturesSelectionCard(
                icon: Icons.play_circle_filled,
                feature: 'Screening Demo',
                description: 'Experience a demonstration of our advanced screening technology to understand its efficiency and accuracy.',
              ),
              SizedBox(height: 10),
              FeaturesSelectionCard(
                icon: Icons.star,
                feature: 'Scoring Result',
                description: 'Receive detailed scoring results for each applicant, providing insights into their qualifications and fit for the role.',
              ),
              SizedBox(height: 10),
              FeaturesSelectionCard(
                icon: Icons.person,
                feature: 'Personality Copier',
                description: 'Applicants create video avatars of their personalities, and our AI analyzes them to provide insights for HR evaluation.',
              ),
              SizedBox(height: 30),
              SectionTitle(
                title: 'Learn How It Works',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 10),
              Text(
                'Our AI-driven candidate screening uses advanced algorithms to analyze applicants\' resumes, match their skills with job requirements, and provide detailed scoring results, ensuring the most suitable candidates are identified for the role.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
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
          decorationColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}

class FeaturesSelectionCard extends StatelessWidget {
  final String feature;
  final String description;
  final IconData icon;

  FeaturesSelectionCard({
    required this.feature,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
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
      child: ListTile(
          leading: Icon(
            icon,
            color: Colors.pinkAccent,
          ),
          title: Text(
            feature,
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
