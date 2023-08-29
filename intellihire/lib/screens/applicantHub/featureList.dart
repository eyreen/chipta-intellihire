import 'package:flutter/material.dart';
import 'features/profileManagementApplicant.dart';
import 'features/jobSearchApplication.dart';
import 'features/monitoredSkillAssessment.dart';
import 'features/applicationTracking.dart';
import 'features/automatedInterview.dart';
import 'features/helpSupport.dart';

class ApplicantHubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('I\'m an Applicant'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _FeatureCard(
                title: 'Profile Management',
                icon: Icons.person,
                onTap: () {
                  // Navigate to Profile Management feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ProfileManagementApplicantScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Job Search and Application',
                icon: Icons.work,
                onTap: () {
                  // Navigate to Job Search and Application feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => JobSearchApplicationScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Application Tracking',
                icon: Icons.analytics,
                onTap: () {
                  // Navigate to Application Tracking feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ApplicationTrackingScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Monitored Skill Assessment',
                icon: Icons.check_circle,
                onTap: () {
                  // Navigate to Monitored Skill Assessment feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => MonitoredSkillAssessmentScreen()),);
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
                    MaterialPageRoute(builder: (context) => AutomatedInterviewScreen()),);
                },
              ),
              SizedBox(height: 20),
              _FeatureCard(
                title: 'Help and Support',
                icon: Icons.assignment_turned_in,
                onTap: () {
                  // Navigate to Help and Support feature
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => HelpSupportScreen()),);
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