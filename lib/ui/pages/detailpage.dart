import 'package:flutter/material.dart';
import 'package:flutter_library_app/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightSalmon,
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(
                      IconlyLight.arrow_left,
                      color: kEerieBlack,
                    ),
                  ),
                  const Text(
                    'Ikigai',
                    style: TextStyle(
                        fontFamily: 'Brandon text bold',
                        fontSize: 26,
                        color: kEerieBlack),
                  ),
                  SvgPicture.asset('assets/svg/Bookmark.svg')
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: kEerieBlack,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: kForalWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          margin: const EdgeInsets.only(bottom: 32),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/book_1.png'))),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Author',
                                  style: TextStyle(
                                    fontFamily: 'Brandon text regular',
                                    fontSize: 14,
                                    color: kDarkLiver,
                                  ),
                                ),
                                Text(
                                  'Hector Gracia',
                                  style: TextStyle(
                                    fontFamily: 'Brandon text bold',
                                    fontSize: 20,
                                    color: kEerieBlack,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Language',
                                  style: TextStyle(
                                    fontFamily: 'Brandon text regular',
                                    fontSize: 14,
                                    color: kDarkLiver,
                                  ),
                                ),
                                Text(
                                  'English',
                                  style: TextStyle(
                                    fontFamily: 'Brandon text bold',
                                    fontSize: 20,
                                    color: kEerieBlack,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const Text(
                          'We all have an ikigai. It`s the Japanese word for `a reason to live` or `a reason to jump out of bed in the morning`. It`s the place where your needs, desires, ambitions, and satisfaction meet. A place of balance. Small wonder that finding your ikigai is closely linked to living longer. Finding your ikigai is easier than you might think. This book will help you work out what your own ikigai really is, and equip you to change your life. You have a purpose in ',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.fade,
                          maxLines: 7,
                          style: TextStyle(
                            color: kDarkLiver,
                            fontFamily: 'Brandon text regular',
                            fontSize: 20,
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed('/dashboard'),
                          child: Container(
                            margin: const EdgeInsets.all(18),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 48, vertical: 16),
                            decoration: BoxDecoration(
                                color: kTropicalViolet,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: kEerieBlack,
                                  width: 1,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(IconlyLight.show),
                                Text(
                                  'Virtual Map',
                                  style: TextStyle(
                                    fontFamily: 'Brandon text bold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
