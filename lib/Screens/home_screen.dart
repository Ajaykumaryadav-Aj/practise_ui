import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Psychiatrist Details')),
        leading: const BackButton(),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Card(
            margin: const EdgeInsets.only(left: 20),
            color: Colors.white60,
            child: SizedBox(
              height: 220,
              width: 370,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC6u_6TOAU3-EG7vF1Iu4Nq4pQaq23g5f5QQ&usqp=CAU',
                          height: 120,
                          width: 70,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 25),
                        child: Column(
                          children: [
                            Text(
                              'Dr. Cristoper Edward',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Neurologist',
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.teal,
                                ),
                                Text('5+ years')
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 80),
                              child: Text('Price:600'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.greenAccent),
                        child: const ListTile(
                          title: Text(
                            '2112+',
                            style: TextStyle(color: Colors.teal),
                          ),
                          subtitle: Text('Patients'),
                          trailing: Icon(
                            Icons.people,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.yellowAccent),
                        child: const ListTile(
                          title: Text(
                            '200+',
                            style: TextStyle(color: Colors.teal),
                          ),
                          subtitle: Text('Reviews '),
                          trailing: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 210, top: 30),
            child: Text(
              'About Psychiatrist',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 60, top: 10),
            child: Text(
                'I come from jakarta indonesia . Has 10 year of\nmedical experiance especially dealing  with\nneurologistics. I will do whatever '),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Text(
                  ' Reviews',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 17),
                child: Text(
                  ' See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.teal),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: SizedBox(
                    height: 120,
                    width: 360,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg',
                          ),
                          title: const Text(
                            'Cristiano Ronaldo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text('1 Day ago'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Text(
                              'Very Satisfying service, I recommend\nyou to use the service of this doctor'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 120,
                    width: 360,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg',
                          ),
                          title: const Text(
                            'Cristiano Ronaldo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text('1 Day ago'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Text(
                              'Very Satisfying service, I recommend\nyou to use the service of this doctor'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, right: 160),
            child: Text(
              ' Select Perfect Package',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 13),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.message,
                size: 40,
                color: Colors.teal,
              ),
              Icon(
                Icons.call,
                size: 40,
                color: Colors.teal,
              ),
              Icon(
                Icons.video_call,
                size: 40,
                color: Colors.teal,
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Messaging'),
              Text('Voice call'),
              Text('video call')
            ],
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(right: 170),
            child: Text(
              ' Select Date and Time',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2025),
            calendarFormat: CalendarFormat.month,
            onFormatChanged: (format) {},
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 30,
                width: 80,
                child: Card(
                  shape: BeveledRectangleBorder(),
                  child: Text('07:30 am'),
                ),
              ),
              SizedBox(
                height: 30,
                width: 80,
                child: Card(
                  shape: BeveledRectangleBorder(),
                  child: Text('07:30 pm'),
                ),
              ),
              SizedBox(
                height: 30,
                width: 80,
                child: Card(
                  shape: BeveledRectangleBorder(),
                  child: Text('09:30 am'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 37),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text('consultation Price: '),
              ),
              Text('Rs.600.00')
            ],
          ),
          const SizedBox(height: 10),
          InkWell(
              onTap: () {},
              child: Container(
                height: 55,
                width: 365,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.teal),
                child: const Text(
                  'Book Appointment',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white),
                ),
              )),
        ]),
      ),
    );
  }
}
