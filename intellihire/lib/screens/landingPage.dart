import 'package:flutter/material.dart';
import 'package:intellihire/screens/userTypeSelection.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Welcome to IntelliHire',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          image: DecorationImage(
            image: NetworkImage(
              'https://c4.wallpaperflare.com/wallpaper/724/774/328/windows-11-abstract-purple-dark-background-hd-wallpaper-preview.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              SectionTitle(
              title: 'Transforming Recruitment with AI',
              gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
            ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Enhance efficiency with personalized job recommendations, AI-powered resume parsing, and streamlined candidate management.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserTypeSelectionScreen()),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Show more information about the app
                },
                child: Text(
                  'Learn More',
                  style: TextStyle(fontSize: 18, color: Colors.pinkAccent),
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
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decorationThickness: 2,
          decorationColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}