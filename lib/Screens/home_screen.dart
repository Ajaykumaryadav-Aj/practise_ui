import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
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
                        padding: const EdgeInsets.only(left: 10, top: 25),
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
            padding: EdgeInsets.only(right: 210, top: 23),
            child: Text(
              'About Psychiatrist',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(right: 60, top: 10),
          //   child: Text(
          //       'I come from jakarta indonesia . Has 10 year of\nmedical experiance especially dealing  with\nneurologistics. I will do whatever '
          //       ),
          // ),
          Container(
            padding: const EdgeInsets.all(22),
            child: const ReadMoreText(
              'I come from jakarta indonesia . Has 10 year of medical experiance especially dealing  with neurologistics. I will do whatever.I come from jakarta indonesia . Has 10 year of medical experiance especially dealing  with neurologistics. I will do whatever ',
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
                padding: EdgeInsets.only(left: 15),
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
                  margin: const EdgeInsets.only(left: 14),
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
              // headerStyle: HeaderStyle(
              //   decoration: BoxDecoration(color: Colors.blue),
              // ),
              // rangeStartDay: DateTime.now(),
              onRangeSelected: (start, end, focusedDay) => true,
              daysOfWeekStyle: const DaysOfWeekStyle(
                  weekendStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(
            height: 15,
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
