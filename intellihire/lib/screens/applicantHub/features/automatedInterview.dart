import 'package:flutter/material.dart';

class AutomatedInterviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Automate Interview Scheduling'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Automated Interview Schedulin',
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
                  'Effortless Interview Scheduling and Management',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Our AI-driven interview scheduling system empowers you to seamlessly coordinate interviews, communicate with candidates, and ensure smooth interview experiences.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              SectionTitle(
                title: 'Select Preferred Interview Time Slots',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              InterviewStepCard(
                title: 'View Availability',
                description: 'Browse candidates\' available time slots for interviews.',
              ),
              SizedBox(height: 10),
              InterviewStepCard(
                title: 'Choose Times',
                description: 'Select your preferred interview time slots.',
              ),
              SizedBox(height: 20),
              SectionTitle(
                title: 'Profile Management',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              ProfileStepCard(
                title: '1',
                description: 'Complete your profile to provide insights to candidates.',
              ),
              SizedBox(height: 20),
              ProfileStepCard(
                title: '2',
                description: 'Customize your interview preferences for tailored experiences.',
              ),
              SizedBox(height: 20),
              SectionTitle(
                title: 'Receive Interview Invitations',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              InterviewStepCard(
                title: 'Invitations',
                description: 'Receive automated interview invitations for selected time slots.',
              ),
              SizedBox(height: 20),
              SectionTitle(
                title: 'Confirm Your Availability',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              InterviewStepCard(
                title: 'Confirmation',
                description: 'Candidates confirm their availability for scheduled interviews.',
              ),
              SizedBox(height: 20),
              SectionTitle(
                title: 'Reminders and Updates',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              InterviewStepCard(
                title: 'Stay Informed',
                description: 'Receive automated reminders and updates about upcoming interviews.',
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action when button is pressed
                  },
                  child: Text(
                    'START NOW',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                   ),
                 ),
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
          decorationColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}

class InterviewStepCard extends StatelessWidget {
  final String title;
  final String description;

  InterviewStepCard({
    required this.title,
    required this.description,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
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
         ],
        ),
       ],
      ),
    );
  }
}

class ProfileStepCard extends StatelessWidget {
  final String title;
  final String description;

  ProfileStepCard({
    required this.title,
    required this.description,
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
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
                