import 'package:flutter/material.dart';
import 'package:flutter_library_app/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreen,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi, Aurora',
                        style: TextStyle(
                          fontFamily: 'Brandon text regular',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: kEerieBlack,
                        ),
                      ),
                      Text(
                        'Grab a book!',
                        style: TextStyle(
                          fontFamily: 'Brandon text bold',
                          fontSize: 40,
                          color: kEerieBlack,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/user.png'))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 304,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kForalWhite,
                      border: Border.all(
                        width: 1,
                        color: kEerieBlack,
                      ),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 13.0, right: 10),
                          child: Icon(
                            IconlyLight.search,
                            color: kDarkLiver,
                            size: 24,
                          ),
                        ),
                        Text('Search title, genre or author...',
                            style: TextStyle(
                              fontFamily: 'Brandon text regular',
                              fontSize: 16,
                              color: kDarkLiver,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kTropicalViolet,
                      border: Border.all(color: kEerieBlack, width: 1),
                    ),
                    child: const Icon(IconlyLight.scan),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: kForalWhite,
                  border: Border.all(
                    width: 1,
                    color: kEerieBlack,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 30, bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 277,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: kLightSalmon,
                                  border:
                                      Border.all(width: 1, color: kEerieBlack),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Crime',
                                    style: TextStyle(
                                      fontFamily: 'Brandon text bold',
                                      fontSize: 20,
                                      color: kDarkLiver,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: kJasmine,
                                  border:
                                      Border.all(width: 1, color: kEerieBlack),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Comedy',
                                    style: TextStyle(
                                      fontFamily: 'Brandon text bold',
                                      fontSize: 20,
                                      color: kDarkLiver,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60,
                                height: 197,
                                decoration: BoxDecoration(
                                  color: kTropicalViolet,
                                  border:
                                      Border.all(width: 1, color: kEerieBlack),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const RotatedBox(
                                  quarterTurns: 3,
                                  child: Center(
                                    child: Text(
                                      'Fantasy',
                                      style: TextStyle(
                                        fontFamily: 'Brandon text bold',
                                        fontSize: 20,
                                        color: kDarkLiver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 117,
                                    width: 275,
                                    decoration: BoxDecoration(
                                      color: kLightSalmonPink,
                                      border: Border.all(
                                          width: 1, color: kEerieBlack),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Mystery',
                                        style: TextStyle(
                                          fontFamily: 'Brandon text bold',
                                          fontSize: 20,
                                          color: kDarkLiver,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 275,
                                    margin: const EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      color: kgreen,
                                      border: Border.all(
                                          width: 1, color: kEerieBlack),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Adventure',
                                        style: TextStyle(
                                          fontFamily: 'Brandon text bold',
                                          fontSize: 20,
                                          color: kDarkLiver,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 16),
                      child: const Text(
                        'Popular Now',
                        style: TextStyle(
                          fontFamily: 'Brandon text bold',
                          fontSize: 26,
                          color: kDarkLiver,
                        ),
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        mainAxisExtent: 240,
                      ),
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () => Get.toNamed('/detail'),
                          child: SizedBox(
                            height: 184,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: kEerieBlack,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    color: kForalWhite,
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 8, left: 8, right: 8),
                                    height: 150,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/book_1.png'))),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 12, right: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: kEerieBlack,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: kForalWhite,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Ikigai',
                                            style: TextStyle(
                                              fontFamily: 'Brandon text bold',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: kEerieBlack,
                                            ),
                                          ),
                                          Text(
                                            'Sally Khitman',
                                            style: TextStyle(
                                              fontFamily:
                                                  'Brandon text reguler',
                                              fontSize: 16,
                                              color: kEerieBlack,
                                            ),
                                          )
                                        ],
                                      ),
                                      SvgPicture.asset(
                                          'assets/svg/Bookmark.svg')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
