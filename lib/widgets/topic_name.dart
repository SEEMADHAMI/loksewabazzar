import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loksewa/screens/infoScreen.dart';
import 'package:loksewa/widgets/bottomNavigationBar.dart';
import 'package:loksewa/widgets/newdiscussion.dart';

class Topic extends StatelessWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: ((context) => const InfoScreen())));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
        ),
        title: const Center(
          child: Text(
            'Topic Name 1',
            style: TextStyle(
              color: Color.fromARGB(255, 75, 157, 168),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          width: double.infinity,
          color: const Color.fromARGB(255, 221, 220, 220),
          child: Column(children: [
            Card(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Container(
                  height: 54.h,
                  width: 415.w,
                  child: ListTile(
                    leading: Image.asset('assets/images/Vector (5).png'),
                    title: const Text('Add New Discussion'),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewDiscussion()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment(-0.85, 0.5),
              child: Text(
                'Popular Discussions',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Card(
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Faucibus nunc.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text(' Date 20/5/2022')],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.bookmark,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Saves',
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.messenger,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Replies',
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 125,
                          ),
                          Row(
                            children: [
                              Text(
                                'Join',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
              itemCount: 2,
            ),
            SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment(-0.85, 0.5),
              child: Text(
                'Recent Discussions',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Card(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, left: 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Faucibus nunc.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [Text(' Date 20/5/2022')],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.bookmark,
                                          size: 15,
                                        ),
                                        Text(
                                          '10 Saves',
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.messenger,
                                          size: 15,
                                        ),
                                        Text(
                                          '10 Replies',
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 125,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Join',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                itemCount: 4)
          ]),
        ),
      ),
    );
  }
}
