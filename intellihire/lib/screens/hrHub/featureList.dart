import 'package:flutter/material.dart';
import 'features/profileManagementHR.dart';
import 'features/jobPosting.dart';
import 'features/candidateScreening.dart';
import 'features/performanceAnalytics.dart';
import 'features/interviewCollaboration.dart';
import 'features/onboardingTalent.dart';

class HRHubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('I\'m an HR Professional'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              _FeatureCard(
                title: 'Profile Management',
                icon: Icons.person,
                onTap: () {
                  // Navigate to Profile Management feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ProfileManagementHRScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Job Posting',
                icon: Icons.work,
                onTap: () {
                  // Navigate to Job Posting feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => JobPostingScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Performance Analytics',
                icon: Icons.analytics,
                onTap: () {
                  // Navigate to Performance Analytics feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => PerformanceAnalyticsScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Candidate Screening',
                icon: Icons.check_circle,
                onTap: () {
                  // Navigate to Candidate Screening feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => CandidateScreeningScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Interview and Tools',
                icon: Icons.calendar_today,
                onTap: () {
                  // Navigate to Interview and Tools feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => InterviewCollaborationScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Onboarding',
                icon: Icons.assignment_turned_in,
                onTap: () {
                  // Navigate to Onboarding feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => OnboardingTalentScreen()),);
               },
             ),
           ],
         ),
       ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _FeatureCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.8),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
        ),
      ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white, // Changed icon color to white
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}