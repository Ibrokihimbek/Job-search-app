import 'package:amaliyot/screens/setting.dart';
import 'package:amaliyot/utils/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 7, 156),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, left: 12),
                    child: Icon(
                      Icons.format_align_left,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 90),
                  child: Text(
                    'Dubai, UAE',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 90),
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                color: Color.fromARGB(255, 242, 240, 240),
                width: double.infinity,
                height: 690.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Good Morning!',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 504,
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return Travelmethod(Dubai.dubai[index]);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        width: 400,
                        height: 80,
                        child: const Center(
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 67, 7, 156),
        onTap: (int index) {
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
              label: 'shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_post_office, color: Colors.black),
              label: 'message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'person'),
        ],
      ),
    );
  }

  Widget Travelmethod(Dubai dubai) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: dubai.title == 'Jobs'
              ? const Color.fromARGB(255, 67, 7, 156)
              : Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: dubai.icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: Text(
              dubai.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: dubai.title == 'Jobs' ? Colors.white : Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  dubai.count,
                  style: TextStyle(
                    fontSize: 32,
                    color: dubai.title == 'Jobs' ? Colors.white : Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  dubai.items,
                  style: TextStyle(
                    color: dubai.title == 'Jobs' ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
