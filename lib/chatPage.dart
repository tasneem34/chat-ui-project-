import 'package:flutter/material.dart';

import 'chatUsersModel.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 25,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const BackButton(
          color: Colors.blue,
        ),
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                textDirection: TextDirection.ltr,
                children: const [
                  Text(
                    "Hello Fondit",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Xchat message",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.blue,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/cat.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "dany",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/bear.jpg"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "colt",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/turtela.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "neeto",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/sheap.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "sokew",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/panda.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "funy",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/octupos.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "ftrw",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/monkey.png"),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "wrog",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            


          ],
        ),
      ),
    );
  }
   
}