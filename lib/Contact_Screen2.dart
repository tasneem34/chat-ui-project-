import 'package:flutter/material.dart';

import 'ChatStatusModel.dart';
import 'Chat_Screen.dart';
import 'chatUsersModel.dart';

class ContectsScreen2 extends StatefulWidget {
  const ContectsScreen2({Key? key}) : super(key: key);

  @override
  State<ContectsScreen2> createState() => _ContectsScreen2State();
}

class _ContectsScreen2State extends State<ContectsScreen2> {
  @override
  Widget build(BuildContext context) {
    List<ChatUsers> chatUsers = [
      ChatUsers(
          name: "Jane Russel",
          messageText: "Awesome Setup",
          imageURL: "images/sheap.png",
          time: "Now"),
      ChatUsers(
          name: "Glady's Murphy",
          messageText: "That's Great, and now what?",
          imageURL: "images/turtela.png",
          time: "Yesterday"),
      ChatUsers(
          name: "Jorge Henry",
          messageText: "Hey where are you?",
          imageURL: "images/Taiger.png",
          time: "31 Mar"),
      ChatUsers(
          name: "Philip Fox",
          messageText: "Busy! Call me in 20 mins",
          imageURL: "images/octupos.png",
          time: "28 Mar"),
      ChatUsers(
          name: "Debra Hawkins",
          messageText: "Thankyou, It's awesome",
          imageURL: "images/rabit.png",
          time: "23 Mar"),
      ChatUsers(
          name: "Jacob Pena",
          messageText: "will update you in evening",
          imageURL: "images/monkey.png",
          time: "17 Mar"),
      ChatUsers(
          name: "Andrey Jones",
          messageText: "Can you please share the file?",
          imageURL: "images/Fox.png",
          time: "24 Feb"),
      ChatUsers(
          name: "Utrw Jones",
          messageText:
              "Hi, my name is utrw and l am looking for any job and l am freelancer",
          imageURL: "images/elephant.png",
          time: "23:07"),
      ChatUsers(
          name: "taru rego qaer",
          messageText: "i am to busy rigth now, can you chat me later?",
          imageURL: "images/lion.png",
          time: "2:50"),
    ];
    //------------------------------------------
    List<ChatStatus> Chatstatus = [
      ChatStatus(
        name: "Jane Russel",
        imageURL: "images/sheap.png",
      ),
      ChatStatus(
        name: "Glady's Murphy",
        imageURL: "images/turtela.png",
      ),
      ChatStatus(
        name: "Jorge Henry",
        imageURL: "images/Taiger.png",
      ),
      ChatStatus(
        name: "Philip Fox",
        imageURL: "images/octupos.png",
      ),
      ChatStatus(
        name: "Debra Hawkins",
        imageURL: "images/rabit.png",
      ),
      ChatStatus(
        name: "Jacob Pena",
        imageURL: "images/monkey.png",
      ),
      ChatStatus(
        name: "Andrey Jones",
        imageURL: "images/Fox.png",
      ),
      ChatStatus(
        name: "Utrw Jones",
        imageURL: "images/elephant.png",
      ),
    ];

    // ignore: prefer_const_constructors

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
                    width: 10.0,
                  ),
                  for (var statu in Chatstatus)
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(statu.imageURL),
                              radius: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            statu.name,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var user in chatUsers)
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ChatScreen(user.name, user.imageURL)));
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(user.imageURL),
                              radius: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        user.name,
                                        style: const TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(user.time),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        user.messageText,
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black26,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 50.0,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
