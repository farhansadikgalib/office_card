import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final controller = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlipCard(
                rotateSide: RotateSide.right,
                onTapFlipping: false,
                axis: FlipAxis.vertical,
                controller: controller,
                frontWidget: Center(
                  child: Container(
                    height: 200,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurRadius: 6.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage('assets/bg1.png'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            scale: 5,
                          ),
                          const Text(
                            "A CONCERN OF US-BANGLA GROUP",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                backWidget: Center(
                  child: Container(
                    height: 200,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurRadius: 6.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage('assets/bg2.png'),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 75,
                                width: 18,
                                decoration: const BoxDecoration(
                                    color: Color(0XFFED0000),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12))),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 36),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Farhan ',
                                        style: TextStyle(
                                          color: Color(0XFFED0000),
                                          fontWeight: FontWeight.w500,
                                        )),
                                    TextSpan(
                                        text: 'Sadik',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: '\n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: '\nSoftware Engineer ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: '\n ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2,
                                            color: Colors.black)),
                                  ],
                                ),
                                textScaleFactor: 0.5,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0XFFED0000),
                                child: Center(
                                    child: Icon(
                                  Icons.location_on,
                                  size: 12,
                                  color: Colors.white,
                                )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Gulshan, Dhaka-1212",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0XFFED0000),
                                child: Icon(
                                  Icons.phone_iphone,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final call = Uri.parse('tel:+8801773076754');
                                  if (await canLaunchUrl(call)) {
                                    launchUrl(call);
                                  } else {
                                    throw 'Could not launch $call';
                                  }
                                },
                                child: const Text(
                                  "+8801773076754",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           Row(
                            children: [
                              const CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0XFFED0000),
                                child: Center(
                                    child: Icon(
                                  Icons.email,
                                  size: 12,
                                  color: Colors.white,
                                )),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final url = Uri(
                                    scheme: 'mailto',
                                    path: 'farhan.galib@technonext.com',
                                    query: 'subject=&body=',
                                  );
                                  if (await canLaunchUrl(url)) {
                                    launchUrl(url);
                                  } else {
                                    // ignore: avoid_print
                                    print("Can't launch $url");
                                  }
                                },
                                child: const Text(
                                  "farhan.galib@technonext.com",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Text('Flip My Card'),
                onPressed: () {
                  controller.flipcard();
                },
              )
            ],
          )),
    );
  }
}
