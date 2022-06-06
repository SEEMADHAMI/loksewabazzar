import 'package:flutter/material.dart';
import 'package:loksewa/screens/courseScreen.dart';
import 'package:loksewa/widgets/course_name_buy_now.dart';
import 'package:loksewa/widgets/videos.dart';

class CourseName extends StatelessWidget {
  const CourseName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: ((context) => const CourseContent())));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/courseName.png'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Course Name',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n'),
                  Row(
                    children: const [
                      Text(
                        'Created on: 20 January 2021\n\nValid for 6 months\n',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Rs 5,000',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 42,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 94, 124, 142),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BuyNow()));
                            },
                            child: const Text(
                              'Buy Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "What's in the Package?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  20 Videos explaining in depth regarding subject.')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  5 MCQ Questionaries to test your knowledge.')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  10 PDF Notes about the subject matter.')
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "What will you learn?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  20 Videos explaining in depth regarding subject.')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  5 MCQ Questionaries to test your knowledge.')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      Text('  10 PDF Notes about the subject matter.')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Preview Course Content',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CourseContentListTile(
                    iconWidget: Icon(Icons.video_settings),
                    title: 'Videos',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Videos()));
                    },
                    subTitle: 'Videos to learn from',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const CourseContentListTile(
                    iconWidget: Icon(Icons.text_snippet),
                    title: "MCQ's",
                    subTitle: "MCQ's to practice what you learnt",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const CourseContentListTile(
                    iconWidget: Icon(Icons.notes),
                    title: 'Notes',
                    subTitle: 'PDF notes for the course',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CourseContentListTile extends StatelessWidget {
  const CourseContentListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.iconWidget,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Widget iconWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 244, 239, 239),
          ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey.withOpacity(0.6),
          ),
          height: 60,
          width: 60,
          child: Center(
            child: iconWidget,
          ),
        ),
        contentPadding: const EdgeInsets.only(
          left: 10,
        ),
        title: Text(
          '$title',
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$subTitle'),
      ),
    );
  }
}
