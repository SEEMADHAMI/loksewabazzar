import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loksewa/widgets/discussion_inside_page.dart';
import 'package:loksewa/widgets/topic_name.dart';

class NewDiscussion extends StatelessWidget {
  const NewDiscussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: ((context) => const Topic())));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
        ),
        title: const Center(
          child: Text(
            'New Discussion',
            style: TextStyle(
              color: Color.fromARGB(255, 75, 157, 168),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 221, 220, 220),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 10, left: 22, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Add New Discussion',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 370,
              padding: EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discussion Title:',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0, color: Colors.blueGrey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 5),
                          hintText: 'Enter the Discussion Title',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'More about discussion:',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                      height: 120,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 0, color: Colors.blueGrey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 5),
                              hintText:
                                  'Enter more information about the discussion',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(width: 0, color: Colors.blueGrey),
                            ),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.add_a_photo_outlined),
                                label: Text('Add an image')),
                          )
                        ],
                      )),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const DiscussionPage())));
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      child: const Text(
                        'Post Discussion',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
