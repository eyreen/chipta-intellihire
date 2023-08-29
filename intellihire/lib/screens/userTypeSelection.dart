import 'package:flutter/material.dart';
import 'applicantHub/featureList.dart';
import 'hrHub/featureList.dart';

class UserTypeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Select User Type'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(height: 30),
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
                  'Who are you?',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Choose your role to begin the journey with IntelliHire. Are you an aspiring applicant looking for exciting opportunities or an HR professional searching for top talents?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to applicant flow
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplicantHubPage()),
                  );
                },
                icon: Icon(Icons.person_outline), // Applicant icon
                label: Text(
                  'I\'m an Applicant',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.white), // Add border
                  ),
                  onPrimary: Colors.white,
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce button height
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to HR Hub page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HRHubPage()),
                  );
                },
                icon: Icon(Icons.business), // HR Professional icon
                label: Text(
                  'I\'m an HR Professional',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.white), // Add border
                  ),
                  onPrimary: Colors.white,
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce button height
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
