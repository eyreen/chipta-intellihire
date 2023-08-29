import 'package:flutter/material.dart';

class ApplicationTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Application Tracking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle('Application Tracking'),
            SizedBox(height: 10),
            Text(
              'Experience the future of application tracking with our real-time AI-driven solution.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ApplicationCard(
              jobTitle: 'Software Engineer',
              companyName: 'TechCo',
              status: 'Pending (Interview)',
              lastUpdate: '2023-07-10, 9,30 pm',
            ),
            SizedBox(height: 10),
            ApplicationCard(
              jobTitle: 'Data Scientist',
              companyName: 'DataTech',
              status: 'Completed',
              lastUpdate: '2023-07-13, 7.45 pm',
            ),
            SizedBox(height: 10),
            ApplicationCard(
              jobTitle: 'Data Engineer',
              companyName: 'SamSanTech',
              status: 'Completed',
              lastUpdate: '2023-07-09, 9.45 pm',
            ),
            SizedBox(height: 10),
            ApplicationCard(
              jobTitle: 'Security Engineer',
              companyName: 'HeloTech',
              status: 'Completed',
              lastUpdate: '2023-07-05, 10.45 pm',
            ),
            // Add more ApplicationCard widgets here
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
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

class ApplicationCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String status;
  final String lastUpdate;

  ApplicationCard({
    required this.jobTitle,
    required this.companyName,
    required this.status,
    required this.lastUpdate,
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
            status,
            style: TextStyle(
              color: status == 'Completed' ? Colors.green : Colors.yellow,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Text(
            lastUpdate,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
