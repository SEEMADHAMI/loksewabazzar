// ignore: file_names
import 'package:flutter/material.dart';
import 'package:loksewa/widgets/course_name.dart';

class CourseContent extends StatelessWidget {
  const CourseContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Courses',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          color: const Color.fromARGB(255, 232, 226, 226),
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
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
                          padding: const EdgeInsets.only(left: 10),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Course Name\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
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
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 10, left: 10),
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'All Courses',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search for Courses',
                              hintStyle: TextStyle(color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.tune_rounded, color: Colors.blueGrey),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        // height: 90.h,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/course1.png')),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CourseName()));
                                      },
                                      child: const Text(
                                        'Course Name',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text('20 Videos\n2 MCQ\n10 Notes')
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Text(
                              'Rs 2000',
                              style: TextStyle(color: Colors.blue),
                            ),
                          
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 6),
            ],
          ),
        ),
      ),
    );
  }
}
