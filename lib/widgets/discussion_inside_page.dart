import 'package:flutter/material.dart';
import 'package:loksewa/screens/infoScreen.dart';

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(179, 200, 198, 198),
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada volutpat tincidunt.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Divider(
                      color: Colors.blue,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada volutpat tincidunt. Donec eu eros posuere, suscipit tellus cursus, tincidunt sapien. Cras eget lacus at tortor porttitor egestas. Maecenas massa justo, egestas vel nibh id, scelerisque venenatis lacus.\n'),
                    Image.asset('assets/images/discussion.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.bookmark,
                                      size: 15,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Saved',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                ]),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.messenger_rounded,
                                      size: 15,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Reply',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Container(
                            height: 120,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 213, 230, 245),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 0,
                                  color: Color.fromARGB(255, 131, 150, 159)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 5),
                                    hintText: 'Enter your Reply',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 0,
                                          color:
                                              Color.fromARGB(255, 39, 69, 84)),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Reply",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ))),
                              ],
                            )),
                        const SizedBox(
                          height: 5,
                          width: 4,
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 72, 158, 227),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/indiscuss.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Ram Hari Shrestha'),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text('24/02/2022')
                              ],
                            ),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada volutpat tincidunt. Donec eu eros posuere, suscipit tellus cursus, tincidunt sapien. Cras eget lacus at tortor porttitor egestas. Maecenas massa justo, egestas vel nibh id, scelerisque venenatis lacus.'),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/indiscuss.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Ram Hari Shrestha'),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text('24/02/2022')
                              ],
                            ),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada volutpat tincidunt. Donec eu eros posuere, suscipit tellus cursus, tincidunt sapien. Cras eget lacus at tortor porttitor egestas. Maecenas massa justo, egestas vel nibh id, scelerisque venenatis lacus.'),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
