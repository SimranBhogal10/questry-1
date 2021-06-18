import 'package:flutter/material.dart';
import 'package:questry/app/modules/feed/views/pages/comment_section.dart';

class answerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What is error in this code?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Image(
                        image: AssetImage("assets/images/result.png"),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 8.0),
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "4 Answers",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Paul Graham",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Founder of Y-Combinator",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Cras mattis consecteturer purus set amet fermentum.Aenan lacinia bibendum nulla sed consecturer.Macenas fucibus mollis "
                        "interdum. Cum soccis natoque penathosis et magnis dis partueuioe ,niosuygs",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                      child: Text(
                        "1.4k Views",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/images/arrow-up.png"),
                                      color: Colors.deepOrange,
                                      size: 26,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Container(
                                        height: 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.grey.shade500)),
                                      ),
                                    ),
                                    ImageIcon(
                                      AssetImage(
                                          "assets/images/down-arrow.png"),
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                IconButton(
                                    iconSize: 33,
                                    icon: Icon(
                                      Icons.comment,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CommentSection()));
                                    }),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: CircleAvatar(
                                      backgroundColor: Colors.blue.shade300,
                                      radius: 10,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "answered",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Nov 11'20 at 12:33",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.grey.shade300,
              leading: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.send),
                        hintText: "Add a Comment...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
//              trailing: TextButton(
//                child: Icon(Icons.send),
//                onPressed: () {},
//              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.grey.shade300,
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
