import 'package:chattyfrombwa/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Image.asset(
                  "assets/images/profile.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 20,),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                const SizedBox(height: 2,),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    // Untuk sumbu x menggunakan crossAxis, sedangkan sumbu y main axis
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/friend1.png",
                            width: 55,
                            height: 55,
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gabriella",
                                style: titleTextStyle,
                              ),
                              Text(
                                "Sorry, you're not my ty...",
                                style: subtitleTextStyle.copyWith(
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Now",
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/friend2.png",
                            width: 55,
                            height: 55,
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Joshuer",
                                style: titleTextStyle,
                              ),
                              Text(
                                "Sorry, you're not my ty...",
                                style: subtitleTextStyle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "2:30",
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/group_1.png",
                            width: 55,
                            height: 55,
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jakarta Fair",
                                style: titleTextStyle,
                              ),
                              Text(
                                "Why does everyone ca...",
                                style: subtitleTextStyle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "11:11",
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/group_2.png",
                            width: 55,
                            height: 55,
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alfa",
                                style: titleTextStyle,
                              ),
                              Text(
                                "Why does everyone ca...",
                                style: subtitleTextStyle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "22:22",
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/group_3.png",
                            width: 55,
                            height: 55,
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bagus Squad",
                                style: titleTextStyle,
                              ),
                              Text(
                                "Why does everyone ca...",
                                style: subtitleTextStyle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "13:33",
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                    ],
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