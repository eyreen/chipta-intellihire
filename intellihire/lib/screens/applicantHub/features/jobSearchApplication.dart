import 'package:flutter/material.dart';

class JobSearchApplicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Job Search & Application'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Intelligent Job Matching',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 10),
              Text(
                'Jobs recommended based on your profile are sorted out using our AI algorithm.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
            SectionTitle(
                title: 'Job Listings',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              JobListingCard(
                jobTitle: 'Software Engineer',
                companyName: 'TechCo',
                location: 'Seremban, NS',
                jobDescription: '...',
              ),
              SizedBox(height: 10),
              JobListingCard(
                jobTitle: 'Data Scientist',
                companyName: 'DataTech',
                location: 'Bangsar, KL',
                jobDescription: '...',
              ),
              SizedBox(height: 10),
              JobListingCard(
                jobTitle: 'Data Analyst',
                companyName: 'SamSanTech',
                location: 'Bangi, Selangor',
                jobDescription: '...',
             ),
            // Add more JobListingCard widgets here
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

class JobListingCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String location;
  final String jobDescription;

  JobListingCard({
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.jobDescription,
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
                jobTitle,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                companyName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            location,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Text(
            jobDescription,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              // Expand job description or navigate to job details
            },
            child: Text(
              'Expand',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
