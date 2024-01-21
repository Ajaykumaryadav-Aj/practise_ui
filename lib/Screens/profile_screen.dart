import 'package:flutter/material.dart';

List<Map<String, dynamic>> generallist = [
  {
    'icon1': Icons.person,
    'title': 'Edit Profile',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.text_snippet_outlined,
    'title': 'History',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.translate,
    'title': 'Language',
    'icon2': Icons.keyboard_arrow_right
  },
  {'icon1': Icons.dark_mode, 'title': 'Dark Mode', 'icon2': Icons.toggle_off}
];

List<Map<String, dynamic>> accountlist = [
  {
    'icon1': Icons.payment,
    'title': 'Payment',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.lock,
    'title': 'Security',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.language,
    'title': 'Language',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.person_add_alt,
    'title': 'invites Friends',
    'icon2': Icons.keyboard_arrow_right
  },
  {
    'icon1': Icons.logout,
    'title': 'Sign out',
  }
];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 7, 241, 218),
              margin: const EdgeInsets.only(left: 12, right: 12),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: ListTile(
                contentPadding: const EdgeInsets.all(6),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.create.vista.com/api/media/small/218006906/stock-photo-happy-male-doctor-medical-coat-stethoscope-neck-looking-camera-isolated'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: const Text('Dr. Criatian Edward'),
                subtitle: const Text('(1111)1112334'),
                trailing: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22, right: 240),
              child: Text(
                'General Setting',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              margin: const EdgeInsets.only(left: 12, right: 12),
              color: const Color.fromARGB(255, 224, 212, 212),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: generallist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    iconColor: Colors.grey,
                    leading: Icon(generallist[index]['icon1']),
                    title: Text(generallist[index]['title']),
                    trailing: Icon(generallist[index]['icon2']),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 240),
              child: Text(
                'Account Setting',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              margin: const EdgeInsets.only(left: 12, right: 12),
              color: const Color.fromARGB(255, 224, 212, 212),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: accountlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    iconColor: Colors.grey,
                    leading: Icon(accountlist[index]['icon1']),
                    title: Text(accountlist[index]['title']),
                    trailing: Icon(accountlist[index]['icon2']),
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
