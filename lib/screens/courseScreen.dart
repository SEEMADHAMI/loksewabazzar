// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseContent extends StatelessWidget {
  const CourseContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Courses',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        // width: double.infinity,
        color: Color.fromARGB(255, 232, 226, 226),
        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Courses',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/courseimage.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 40)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Course Name\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                              TextSpan(
                                  text:
                                      'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incidid.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'Rs.5,000',
                                  style: TextStyle(color: Colors.blueGrey),
                                )
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Learn More',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'All Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: 260.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search for Courses'),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.tune_rounded,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              height: 100.h,
              width: 345.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('assets/images/course1.png')),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Course Name\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '20 Videos\n',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '2 MCQs\n',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '10 Notes\n',
                              style: TextStyle(color: Colors.black)),
                        ]),
                      )
                    ],
                  ),
                  Text('2,000')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
