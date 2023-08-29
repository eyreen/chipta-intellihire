import 'package:flutter/material.dart';

class ProfileManagementHRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Profile Management'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                'HR User Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to your profile management page. Here you can update your personal information, contact details, and more.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            _buildListTile(
              icon: Icons.person,
              title: 'Personal Information',
              subtitle: 'Update your name, profile picture, and other personal details.',
              onTap: () {
                // Navigate to personal information editing page
              },
            ),
            _buildListTile(
              icon: Icons.phone,
              title: 'Contact Details',
              subtitle: 'Edit your contact information such as email and phone number.',
              onTap: () {
                // Navigate to contact details editing page
              },
            ),
            _buildListTile(
              icon: Icons.lock,
              title: 'Change Password',
              subtitle: 'Change your account password for security.',
              onTap: () {
                // Navigate to change password page
              },
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
                'AI-Driven Recruitment Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            _buildListTile(
              icon: Icons.settings,
              title: 'Preference Settings',
              subtitle: 'Customize your AI-driven recruitment preferences.',
              onTap: () {
                // Navigate to preference settings page
              },
            ),
            _buildListTile(
              icon: Icons.notifications,
              title: 'Notification Settings',
              subtitle: 'Manage notifications related to candidate screening and matches.',
              onTap: () {
                // Navigate to notification settings page
              },
            ),
            // Add more widgets for other HR-related settings
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, required String subtitle, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.pinkAccent, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.grey[300]),
          ),
        ),
      ),
    );
  }
}
