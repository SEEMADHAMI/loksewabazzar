import 'package:flutter/material.dart';
import 'package:loksewa/widgets/course_name.dart';
import 'package:loksewa/widgets/videos.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: ((context) => const CourseName())));
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
                            fontSize: 26,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.watch_later,
                        size: 20,
                      ),
                      Text(
                        ' Valid till 27 April, 2022',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n'),
                  const Text(
                    'Course Content',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
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
            ),
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
        color: const Color.fromARGB(255, 247, 243, 243),
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
