import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Let Us Answer Your Enquiries!'),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Help and Support',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 10),
              Text(
                'Experience seamless assistance and knowledge sharing for all your queries.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              SupportOptionCard(
                title: 'Meet IntelBot',
                description: 'Chat with our Intelligent chatbot powered by Generative AI',
                icon: Icons.chat_bubble_outline,
              ),
              SizedBox(height: 10),
              SupportOptionCard(
                title: 'Community Forum',
                description: 'Explore our knowledge base and discuss with the strong IntelliHire community',
                icon: Icons.forum,
              ),
              SizedBox(height: 10),
              SupportOptionCard(
                title: 'Instant Message',
                description: 'Have a quick chat with our customer support during working hours',
                icon: Icons.message_outlined,
            ),
            // Add more SupportOptionCard widgets here
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

class SupportOptionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  SupportOptionCard({
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
            color: Colors.purple.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.deepPurpleAccent,
                size: 40,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
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