// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 28, 27, 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    onTap: () {
                      show = true;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      hintText: 'Search in Buro',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        // fontSize: 1.8 * textMultiplier,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(58, 202, 202, 202),
                      enabledBorder: OutlineInputBorder(
                        // borderSide: BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide(
                        //     // width: 0.06 * heightMultiplier,
                        //     color: Colors.white),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0,
                      ),
                      prefixIcon: !show
                          ? Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  alignment: Alignment.centerRight,
                                  // onTap: _togglePasswordView,

                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          alignment: Alignment.centerRight,
                          // onTap: _togglePasswordView,
                          child: InkWell(
                            onTap: () {
                              show = false;
                            },
                            child: show
                                ? CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 10,
                                    child: Icon(
                                      Icons.clear,
                                      color: Colors.black,
                                      size: 12,
                                    ),
                                  )
                                : SizedBox(
                                    height: 0,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 44,
                      ),
                      Text(
                        'Buro ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'by ',
                          style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'ringover ',
                          style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.green,
                        width: 150,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('pictures2/5185462.jpg'),
                          radius: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(
                      //   width: 15,
                      // ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            elevation: 10,
                            enableDrag: true,
                            isDismissible: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 174,
                                            ),
                                            Container(
                                              height: 6,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.info),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      'Lobby',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 230,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 39, 37, 37),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  child: Icon(
                                                    Icons.more_vert,
                                                    size: 24,
                                                    color: Color.fromARGB(
                                                        255, 222, 221, 221),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                // color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                  'pictures2/5185462.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                  'pictures2/5185462.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                  'pictures2/5185462.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 46,
                                            ),
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                  'pictures2/5185462.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                  'pictures2/5185462.jpg',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                              width: 180,
                                              height: 40,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey.shade900),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  'Leave quietly',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  50,
                                                ),
                                              ),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.volume_up,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  50,
                                                ),
                                              ),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.mic,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(57, 255, 250, 250),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: EdgeInsets.all(10),
                          height: 120,
                          width: 110,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('pictures2/5185462.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('pictures2/5185462.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('pictures2/5185462.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('pictures2/5185462.jpg'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(57, 255, 250, 250),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.all(10),
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(57, 255, 250, 250),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.all(10),
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Lobby',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 63,
                      ),
                      Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                      SizedBox(
                        width: 77,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                      SizedBox(
                        width: 84,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(
                      //   width: 15,
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(57, 255, 250, 250),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.all(10),
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(57, 255, 250, 250),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.all(10),
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(57, 255, 250, 250),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.all(10),
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('pictures2/5185462.jpg'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Lobby',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 63,
                      ),
                      Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                      SizedBox(
                        width: 77,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                      SizedBox(
                        width: 84,
                      ),
                      Text(
                        '4 users',
                        style: TextStyle(
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 260,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => Container(
                          child: AlertDialog(
                            backgroundColor: Colors.transparent,
                            // title: const Text("Alert Dialog Box"),
                            // content: const Text(
                            // "You have raised a Alert Dialog Box"),
                            actions: [
                              Container(
                                height: 250,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  border: Border.all(
                                    color: Color.fromARGB(74, 158, 158, 158),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Choose a name',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 140,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(64, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Icon(
                                              Icons.lock_open,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Container(
                                        height: 45,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                // width: 0.06 * heightMultiplier,
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                // width: 0.06 * heightMultiplier,
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 12,
                                            ),
                                            hintText: 'Choose a color',
                                            hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              // fontSize: 1.8 * textMultiplier,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Container(
                                        height: 45,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                // width: 0.06 * heightMultiplier,
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                // width: 0.06 * heightMultiplier,
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 12,
                                            ),
                                            hintText: 'Choose a color',
                                            hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              // fontSize: 1.8 * textMultiplier,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 4,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            width: 127,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Colors.grey,
                                            ),
                                            margin: EdgeInsets.all(0),
                                            // padding: const EdgeInsets.symmetric(
                                            //   horizontal: 37,
                                            //   vertical: 13,
                                            // ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            width: 127,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: Colors.grey,
                                            ),
                                            margin: EdgeInsets.all(0),
                                            // padding: const EdgeInsets.symmetric(
                                            //   horizontal: 37,
                                            //   vertical: 13,
                                            // ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                "Create",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
