import 'package:flutter/material.dart';
import 'package:loksewa/screens/homescreen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Center(
          child: Text(
            'Discussions',
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 700,
        color: const Color.fromARGB(255, 221, 220, 220),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 8),
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Discussions',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pop(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const NameTopic()));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 8),
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Saved Discussions',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => TopicName()));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment(-0.80, 0.5),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 10.png'),
                    // backgroundColor: Colors.grey,
                  ),
                  title: const Text('Lorem Ipsom Dolor sit Mat'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 10 (1).png'),
                  ),
                  title: const Text('Lorem Ipsom Dolor sit Mat'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 10 (2).png'),
                  ),
                  title: const Text('Lorem Ipsom Dolor sit Mat'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 10 (3).png'),
                  ),
                  title: const Text('Lorem Ipsom Dolor sit Mat'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 10 (4).png'),
                  ),
                  title: const Text('Lorem Ipsom Dolor sit Mat'),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
