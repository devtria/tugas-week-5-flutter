import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'M. Satria Nurulloh';
  final String role = 'Mahasiswa Teknik Informatika';
  
  final List<String> backendExperiences = const [
    'Backend Developer di Google and Apple :)',
    'RESTful API Development using Node.js & Express',
    'Database Management with MySQL & MongoDB',
    'AI & Machine Learning Integration',
    'Cloud Deployment using Docker & AWS',
    'API Security & Authentication with JWT',
  ];
  
  final List<String> achievements = const [
    'Imo Bindang 1000',
    'Top Global 1 Indonesia - Ruby',
    'Top Global 5 Indonesia - Selena',
    'Top Global 10 Indonesia - Helcurt', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: ProfileAvatar()),
            const SizedBox(height: 16),
            Center(child: ProfileInfo(name: userName, role: role)),
            const SizedBox(height: 24),
            
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    userName = 'M. Satria Nurulloh (Updated)';
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Nama berhasil diperbarui secara dinamis!'))
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
            ),
            const SizedBox(height: 24),
            
            const ProfileStats(),
            
            const SizedBox(height: 24),
            const Text(
              'Pengalaman Backend Engineering',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            
            Expanded(
              child: ListView.builder(
                itemCount: backendExperiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    titleText: backendExperiences[index],
                    iconData: Icons.code,
                  );
                },
              ),
            ),

            const SizedBox(height: 12),
            const Text(
              'Pencapaian & Prestasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),

            Expanded(
              child: ListView.builder(
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    titleText: achievements[index],
                    iconData: Icons.emoji_events,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String name;
  final String role;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          role,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatItem(count: '15', label: 'Proyek'),
          StatItem(count: '1.2K', label: 'Followers'),
          StatItem(count: '42', label: 'Following'),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String titleText;
  final IconData iconData;

  const ExperienceCard({
    super.key,
    required this.titleText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ListTile(
          leading: Icon(iconData, color: Colors.blueAccent),
          title: Text(
            titleText,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}