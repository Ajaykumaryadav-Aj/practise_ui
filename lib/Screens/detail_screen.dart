import 'package:flutter/material.dart';
import 'package:practise_ui/Screens/payment_screen.dart';
import 'package:readmore/readmore.dart';
import 'package:table_calendar/table_calendar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
            margin: const EdgeInsets.only(left: 10),
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
                      Container(
                        margin: const EdgeInsets.only(left: 15, top: 15),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.create.vista.com/api/media/small/218006906/stock-photo-happy-male-doctor-medical-coat-stethoscope-neck-looking-camera-isolated'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 17),
                        child: Column(
                          children: [
                            const Text(
                              'Dr. Cristoper Edward',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Row(
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
                            Wrap(
                              spacing: 20,
                              children: [
                                const Text('Price:600'),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  color:
                                      const Color.fromARGB(255, 198, 141, 137),
                                  child: const Wrap(spacing: 5, children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '4.7',
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.greenAccent),
                        child: ListTile(
                          title: const Text(
                            '2112+',
                            style: TextStyle(color: Colors.teal),
                          ),
                          subtitle: const Text('Patients'),
                          trailing: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.people,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 239, 239, 236)),
                        child: ListTile(
                          title: const Text(
                            '200+',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 211, 10)),
                          ),
                          subtitle: const Text('Reviews '),
                          trailing: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 249, 225, 9),
                            ),
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
            padding: EdgeInsets.only(right: 210, top: 15),
            child: Text(
              'About Psychiatrist',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 5),
            child: const ReadMoreText(
              'I come from jakarta indonesia . Has 10 year of medical experiance especially dealing  with neurologistics. I will do whatever.I come from jakarta indonesia . Has 10 year of medical experiance especially dealing   ',
              trimCollapsedText: 'Read More...',
              trimLines: 3,
              trimMode: TrimMode.Line,
              trimExpandedText: 'Less read',
              moreStyle:
                  TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
              lessStyle:
                  TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
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
                  margin: const EdgeInsets.only(left: 16, right: 10),
                  child: SizedBox(
                    height: 120,
                    width: 360,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            margin: const EdgeInsets.only(left: 5, top: 5),
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: const Text(
                            'Cristiano Ronaldo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text('1 Day ago'),
                          trailing: Card(
                            margin: const EdgeInsets.only(left: 10, bottom: 17),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: const Color.fromARGB(255, 198, 141, 137),
                            child: const Wrap(spacing: 5, children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(fontSize: 14),
                              )
                            ]),
                          ),
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
                  // margin: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 120,
                    width: 360,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            margin: const EdgeInsets.only(left: 5, top: 5),
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: const Text(
                            'Cristiano Ronaldo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text('1 Day ago'),
                          trailing: Card(
                            margin: const EdgeInsets.only(left: 10, bottom: 17),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: const Color.fromARGB(255, 198, 141, 137),
                            child: const Wrap(spacing: 5, children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(fontSize: 14),
                              )
                            ]),
                          ),
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
            padding: EdgeInsets.only(top: 12, right: 188),
            child: Text(
              ' Select Perfect Package',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 13),
          Wrap(
            spacing: 90,
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 173, 227, 115),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.message,
                      size: 25,
                      color: Colors.teal,
                    ),
                  ),
                  const Text('Messaging')
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.call,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  const Text('Voice call')
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 173, 227, 115),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.videocam,
                      size: 25,
                      color: Colors.teal,
                    ),
                  ),
                  const Text('video call')
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(right: 205),
            child: Text(
              ' Select Date and Time',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: TableCalendar(
              daysOfWeekVisible: true,
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2025),
              calendarFormat: CalendarFormat.week,
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(color: Colors.amber),
              ),
              onRangeSelected: (start, end, focusedDay) => true,
              daysOfWeekStyle: const DaysOfWeekStyle(
                  weekendStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Wrap(
            spacing: 70,
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
          const SizedBox(height: 30),
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentScreen(),
                    ));
              },
              child: Container(
                height: 55,
                width: 370,
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
