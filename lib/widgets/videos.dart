import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loksewa/widgets/course_name.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

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
        title: const Center(
          child: Text(
            'Videos',
            style: TextStyle(
              color: Color.fromARGB(255, 75, 157, 168),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, top: 15, bottom: 20, right: 30),
              child: Container(
                width: 315.w,
                height: 202.h,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/videos.jpg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Start Learning',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
