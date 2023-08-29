import 'package:flutter/material.dart';

class InterviewCollaborationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('HR Interview and Collaboration'),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Interview and Collaboration',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              AutomatedSchedulingSection(),
              SizedBox(height: 20),
              AiToolsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class AutomatedSchedulingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollaborationStepCard(
      title: 'Automated Interview Scheduling',
      description: 'Streamline interview scheduling with integrated tools and AI-driven features.',
      steps: [
        'Select Video Platform',
        'Notify Candidate',
        'Candidate Confirmation',
        'Calendar Integration',
      ],
    );
  }
}

class AiToolsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollaborationStepCard(
      title: 'AI Tools',
      description: 'Leverage AI-powered tools to enhance your interview process.',
      steps: [
        'Use chatbot powered by Generative AI',
        'Use AI to generate speech-to-text',
      ],
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
  final List<String> steps;

  CollaborationStepCard({
    required this.title,
    required this.description,
    required this.steps,
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
          Text(
            title,
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(steps.length, (index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  steps[index],
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Description for ${steps[index]} - Example description goes here.',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
