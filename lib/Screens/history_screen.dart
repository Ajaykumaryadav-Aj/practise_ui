import 'package:flutter/material.dart';

List<Map<String, dynamic>> historylist = [
  {
    'url':
        'https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=',
    'title': 'Dr. cristopher Edward ',
    'subtitle': '10 feb 2023 | 10:00 am',
    'icon': Icons.play_circle_fill
  },
  {
    'url':
        'https://img.freepik.com/free-photo/doctor-offering-medical-teleconsultation_23-2149329007.jpg',
    'title': 'Dr. cristopher Edward ',
    'subtitle': '10 feb 2023 | 10:00 am',
    'icon': Icons.play_circle_fill
  },
  {
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcw5ztH3HdwItIXJNg_j3rHs9xZmmo4AsT4idd23koNw&s',
    'title': 'Dr. cristopher Edward ',
    'subtitle': '10 feb 2023 | 10:00 am',
    'icon': Icons.play_circle_fill
  },
  {
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPkQdml7doThTYtvv80DP51Ek_7l1f64sOtg&usqp=CAU',
    'title': 'Dr. cristopher Edward ',
    'subtitle': '10 feb 2023 | 10:00 am',
    'icon': Icons.play_circle_fill
  }
];

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: RichText(
              text: const TextSpan(
                  text: 'Check your ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'History',
                      style: TextStyle(color: Colors.teal),
                    ),
                    TextSpan(text: ' to see last Appointment with Doctor')
                  ]),
            ),
          ),
          // const Wrap(children: [
          //   Padding(
          //     padding: EdgeInsets.only(left: 10, right: 80),
          //     child: TextField(
          //       decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         semanticCounterText: 'Ajay',
          //       ),
          //     ),
          //   ),
          //   const Text('data'),
          // ]),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 80, top: 15),
            child: TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'Search',
                suffixIcon: Icon(Icons.abc),
                suffix: Icon(Icons.accessibility_outlined),
                suffixStyle: TextStyle(color: Colors.amber),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 10),
            shrinkWrap: true,
            itemCount: historylist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Card(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 120,
                    width: 350,
                    child: Column(
                      children: [
                        ListTile(
                          isThreeLine: true,
                          leading: Container(
                            height: 75,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      historylist[index]['url'],
                                    ),
                                    fit: BoxFit.cover),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          title: Text(
                            historylist[index]['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(historylist[index]['subtitle']),
                              const Wrap(
                                spacing: 10,
                                children: [
                                  Icon(
                                    Icons.message,
                                    color: Colors.teal,
                                  ),
                                  Text(
                                    'Message',
                                    style: TextStyle(color: Colors.teal),
                                  )
                                ],
                              )
                            ],
                          ),
                          trailing: Icon(
                            historylist[index]['icon'],
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
