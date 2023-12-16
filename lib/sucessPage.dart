// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:health_care_app/main.dart';

class sucess extends StatefulWidget {
  final String split;
  const sucess(this.split, {Key? key}) : super(key: key);

  @override
  State<sucess> createState() => _sucessState();
}

class _sucessState extends State<sucess> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    final String split = widget.split;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              'Success',
              style: TextStyle(
                color: Color(0xFF2F2F2F),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: screenWidth * 0.84,
              height: screenHeight * 0.53,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFC5C5C5)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: screenWidth * 0.382,
                    height: screenHeight * 0.25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Group 10383.png'))),
                    child: Center(child: Image.asset('images/Frame 485.png')),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Lab tests have been',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0F172A),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'scheduled successfully, You',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0F172A),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'will receive a mail of the same.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0F172A),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    split,
                    style: const TextStyle(
                      color: Color(0xFF667084),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 90),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF10217D),
                  fixedSize: const Size(330, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: const Text('Back to home')),
          )
        ],
      ),
    );
  }
}
