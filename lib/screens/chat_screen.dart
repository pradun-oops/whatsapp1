import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/screens/call_screen.dart';
import 'package:whatsapp/screens/updates_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mData = [
      {
        "name": "BCA 2022-25",
        "msg": "Class from tuesday",
        "time": "10:43 pm",
        "unreadCount": "2",
        "img": "assets/images/img1.jpg"
      },
      {
        "name": "Akash",
        "msg": "How are you?",
        "time": "11:18 am",
        "unreadCount": "3",
        "img": "assets/images/img2.jpg"
      },
      {
        "name": "Sumit",
        "msg": "Call me at evening",
        "time": "01:11 am",
        "unreadCount": "6",
        "img": "assets/images/img3.jpg"
      },
      {
        "name": "Bijay",
        "msg": "Don't forget to take your breakfast.",
        "time": "7:43 am",
        "unreadCount": "",
        "img": "assets/images/img5.jpg"
      },
      {
        "name": "Lokesh",
        "msg": "Meet me",
        "time": "11:20 am",
        "unreadCount": "",
        "img": "assets/images/img6.jpg"
      },
      {
        "name": "Sanjay",
        "msg": "College aa rahe ho??",
        "time": "08:43 am",
        "unreadCount": "",
        "img": "assets/images/img7.jpg"
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Image.asset(
            "assets/images/icons.png",
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/ai_logo.png",
                  width: 27,
                  height: 27,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Ask meta Ai or Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              SizedBox(
                width: 23,
              ),
              Icon(
                Icons.archive_outlined,
                color: Colors.white,
                size: 27,
              ),
              SizedBox(
                width: 23,
              ),
              Text(
                "Archived",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: mData.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            mData[index]["img"],
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      mData[index]["name"],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      mData[index]['msg'],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          mData[index]['time'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: mData[index]["unreadCount"] == ""
                                ? Colors.black
                                : Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              mData[index]['unreadCount'] ?? "",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 65,
            right: 23,
            child: SizedBox(
              height: 30,
              width: 30,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.grey.shade900,
                child: Image.asset(
                  "assets/images/ai_logo.png",
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF21c063),
              child: Image.asset(
                "assets/images/message_plus.jpeg",
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  "assets/images/message.svg",
                  // ignore: deprecated_member_use
                  color: Colors.white,
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpdatesScreen(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/updates.jpeg",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallScreen(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/calls.jpeg",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            label: 'Calls',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
