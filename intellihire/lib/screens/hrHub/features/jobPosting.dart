import 'package:flutter/material.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class JobPostingScreen extends StatefulWidget {
  @override
  _JobPostingScreenState createState() => _JobPostingScreenState();
}

class _JobPostingScreenState extends State<JobPostingScreen> {
  bool _isAutomated = false;
  bool _isConfirmed = false;
  List<String> jobTitles = [];
  String? selectedJobTitle;

  // Create a list to store the extracted job postings
  List<String> jobPostings = [];

  @override
  void initState() {
    super.initState();
    _loadExcelData();
  }

  Future<void> _loadExcelData() async {
  try {
    var file = await _localFile;
    var bytes = await File(file.path).readAsBytes();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      for (var row in excel.tables[table]!.rows) {
        jobTitles.add(row[0]?.value ?? '');
      }
    }

    setState(() {});
  } catch (e) {
    print('Error loading Excel data: $e');
  }
}

  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/JumlahKekosonganBaruProfesional.xlsx');
  }

  Widget _buildPostingMethodTile(String title, String subtitle, bool value) {
  return GestureDetector(
    onTap: () {
      setState(() {
        _isAutomated = value;
        _isConfirmed = false; // Reset the confirmation
      });
    },
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        //border: Border.all(color: Colors.pinkAccent.withOpacity(0.5)), // Use pinkAccent color
      ),
      child: Row(
        children: [
          Radio(
            value: value,
            groupValue: _isAutomated,
            onChanged: (bool? newValue) {
              setState(() {
                _isAutomated = newValue!;
                _isConfirmed = false; // Reset the confirmation
              });
            },
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

  Widget _buildJobPostingsList() {
      return Expanded(
        child: ListView.builder(
          itemCount: jobPostings.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(jobPostings[index]),
              // Add other details if needed
            );
          },
        ),
      );
  }

  Widget _buildPostingContainer(String title, String description) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      //border: Border.all(color: Colors.pinkAccent.withOpacity(0.5)), // Use pinkAccent color
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isConfirmed = true;
            });
          },
          child: Text('Confirm Selection'),
          style: ElevatedButton.styleFrom(
            primary: Colors.pinkAccent, // Use pinkAccent color
          ),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Job Posting'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: 'Share Your Job Opening Today!',
                gradientColors: [Color(0xFFff6bd6), Color(0xFF9c50e6)],
              ),
              SizedBox(height: 20),
              Text(
                'Choose a job posting method:',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              _buildPostingMethodTile('Manual', 'Fill in job details and post manually.', false),
              SizedBox(height: 10),
              _buildPostingMethodTile('Automate', 'Generate job description and automate posting.', true),
              SizedBox(height: 30),
              if (_isAutomated)
                _buildPostingContainer('Automated Job Posting', 'Let our AI generate job descriptions and post them automatically to integrated apps.')
              else
                _buildPostingContainer('Manual Job Posting', 'Post job listings manually by filling in all the job details.'),
              SizedBox(height: 10),
              if (jobTitles.isNotEmpty)
                DropdownButton<String>(
                  value: selectedJobTitle,
                  onChanged: (newValue) {
                    setState(() {
                      selectedJobTitle = newValue;
                    });
                  },
                  items: jobTitles.map((title) {
                    return DropdownMenuItem<String>(
                      value: title,
                      child: Text(title),
                    );
                  }).toList(),
                ),
              // Display the extracted job postings
              _buildJobPostingsList(),
              if (_isConfirmed)
                ElevatedButton(
                  onPressed: () {
                    // Proceed to the next step
                  },
                  child: Text('Proceed to Next Step'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent, // Use pinkAccent color
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
