import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [Image.asset('assets/images/Logo 2.png')],
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'LOKSEWA\n',
                style: TextStyle(color: Colors.blueGrey, fontSize: 22),
              ),
              TextSpan(
                text: 'BAZZAR',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ]))
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 221, 220, 220),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
              ),
              const Align(
                alignment: Alignment(-0.85, 0.5),
                child: Text(
                  'Notice Board',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Align(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text:
                                  'Nepal Rastra Bank\nExam Schedule Public\n\n\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Read More',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 35, 108, 118),
                                  fontWeight: FontWeight.w400),
                              recognizer: TapGestureRecognizer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50)),
                  ],
                ),
              ),

              // Upcoming Events
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment(-0.85, 0.5),
                child: Text(
                  'Upcoming Exams',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 130,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
                child: Row(
                  children: [
                    Align(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: '18\n',
                              style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 35, 108, 118),
                              ),
                            ),
                            TextSpan(
                              text: 'April, 2022',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 35, 108, 118),
                                  fontWeight: FontWeight.w400),
                              recognizer: TapGestureRecognizer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: 'Exam NRB Assistant\nSecond Set-34\n\n',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Time 07:30 PM',
                        style: TextStyle(color: Colors.black),
                      )
                    ]))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),
                child: Row(
                  children: [
                    Align(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: '26\n',
                              style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 35, 108, 118),
                              ),
                            ),
                            TextSpan(
                              text: 'April, 2022',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 35, 108, 118),
                                  fontWeight: FontWeight.w400),
                              recognizer: TapGestureRecognizer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: 'Exam NRB Assistant\nSecond Set-35\n\n',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Time 06:30 PM',
                        style: TextStyle(color: Colors.black),
                      )
                    ]))
                  ],
                ),
              ),

              //Continue Learning
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment(-0.85, 0.5),
                child: Text(
                  'Continue Learning',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 160,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/home.jpg',
                      ),
                      fit: BoxFit.fill,
                    )),
                padding: const EdgeInsets.only(top: 13, left: 20, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Monitary Policy 2077/78\nHighlight',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      label: const Text('Resume'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),

              //Take Test
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 130,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                    top: 15, left: 20, bottom: 2, right: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'RBB Pre Test -45\n\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 14, 51, 56),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '15 Questions\nPublished 20Hrs ago',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.bookmark,
                          color: Colors.blueGrey,
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      child: const Text(
                        'Take test',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                height: 130,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                    top: 15, left: 20, bottom: 2, right: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'NRB Assistant Second Test\n\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 14, 51, 56),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '25 Questions\nPublished 20Hrs ago',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.bookmark,
                          color: Colors.blueGrey,
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      child: const Text(
                        'Take test',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
