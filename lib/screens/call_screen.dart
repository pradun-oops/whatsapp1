import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/updates_screen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cData = [
      {"name": "Akash", "time": "10:43 pm", "img": "assets/images/img7.jpg"},
      {"name": "Nites", "time": "08:43 pm", "img": "assets/images/img4.jpg"},
      {"name": "Sumit", "time": "Yesterday", "img": "assets/images/img3.jpg"},
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Calls",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Image.asset(
            "assets/images/top_icon.jpeg",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Favourites",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Image.asset("assets/images/heart.jpeg"),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Add Favourites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Recent",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Expanded(
                child: ListView.builder(
                    itemCount: cData.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        leading: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                cData[index]["img"],
                              ),
                            ),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.call_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cData[index]["name"],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              cData[index]["time"],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF21c063),
              child: Image.asset(
                "assets/images/call.jpeg",
                width: 45,
                height: 45,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ),
                );
              },
              child: Column(
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
