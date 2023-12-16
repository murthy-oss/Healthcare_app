// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:health_care_app/ViewDetails.dart';

void main() {
  runApp(const MyApp());
}

bool cart = true;
int count = 0;
bool add = false;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool cart = true;
  int isItemAddedToCart = 0;
  @override
  void initState() {
    super.initState();
    count = 0;
    add = false;
  }

  void updateCart(bool isAdded) {
    setState(() {
      cart = isAdded;
      count++;

      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        updateCart: updateCart,
        cart: cart,
        isItemAddedToCart: isItemAddedToCart,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.updateCart,
    required this.cart,
    required this.isItemAddedToCart,
  }) : super(key: key);

  final Function(bool) updateCart;
  final bool cart;
  final int isItemAddedToCart;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int isItemAddedToCart = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    print(screenHeight);
    print(screenWidth);
    return Scaffold(
        body: Container(
      width: screenWidth,
      height: screenHeight,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 80,
              ),
              const Text(
                'Logo',
                style: TextStyle(
                  color: Color(0xFF2F2F2F),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (add) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Viewdetails("")));
                  }
                },
                child: Row(
                  children: [
                    if (count > 0)
                      Container(
                        width: 13,
                        height: 13,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF16C2D5),
                          shape: CircleBorder(),
                        ),
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                      ),
                    Container(
                      width: 20,
                      height: 20,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Image.asset('images/mdi_cart.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Popular lab tests',
                style: TextStyle(
                  color: Color(0xFF10217D),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.04,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'View more',
                    style: TextStyle(
                      color: Color(0xFF10217D),
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0.20,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Image.asset('images/arrow-right.png'))
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      attribute(screenWidth, screenHeight),
                      attribute(screenWidth, screenHeight),
                    ],
                  ),
                  Row(
                    children: [
                      attribute(screenWidth, screenHeight),
                      attribute(screenWidth, screenHeight),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                'Popular Packages',
                style: TextStyle(
                  color: Color(0xFF10217D),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.04,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 320,
              height: 235.75,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.75,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDBDDE0),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/Ellipse 16.png'))),
                          child: Container(
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.038,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/012-medicine.png'))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 24,
                          bottom: 24,
                        ),
                        child: Container(
                          width: screenWidth * 0.13,
                          height: screenHeight * 0.02,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF16C2D5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: screenWidth * 0.05,
                                height: screenHeight * 0.02,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: Image.asset(
                                    'images/teenyicons_shield-tick-solid.png'),
                              ),
                              const Text(
                                'Safe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9.75,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 209.25,
                    child: Text(
                      'Full Body checkup',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.05,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 60,
                      width: 200,
                      child: Padding(
                          padding: EdgeInsets.only(left: 0, top: 0, right: 60),
                          child: SizedBox(
                            width: 211.50,
                            height: 72.75,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Includes 92 tests\n',
                                    style: TextStyle(
                                      color: Color(0xFF6B86AE),
                                      fontSize: 10.50,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                  WidgetSpan(
                                      child: SizedBox(
                                    height: 25,
                                  )),
                                  TextSpan(
                                    text:
                                        '. Blood Glucose Fasting\n\n\n. Liver Function Test\n',
                                    style: TextStyle(
                                      color: Color(0xFF6B86AE),
                                      fontSize: 10.50,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                  WidgetSpan(
                                      child: SizedBox(
                                    height: 25,
                                  )),
                                  TextSpan(
                                    text: 'View more',
                                    style: TextStyle(
                                      color: Color(0xFF6B86AE),
                                      fontSize: 10.50,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      height: 0.14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                color: Color(0xFF1BA9B5),
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.05,
                              ),
                            ),
                            TextSpan(
                              text: ' 2000/-',
                              style: TextStyle(
                                color: Color(0xFF1BA9B5),
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.05,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.290,
                        height: screenHeight * 0.042,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 9),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFF10217D)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4,
                          ),
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Color(0xFF10217D),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.10,
                              letterSpacing: 0.12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    ));
  }

  Widget attribute(double screenWidth, double screenHeight) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.357,
              height: screenHeight * 0.040,
              decoration: const ShapeDecoration(
                color: Color(0xCC10217D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              child: const SizedBox(
                width: 116.04,
                child: Center(
                  child: Text(
                    'Thyroid Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Includes 3 tests',
                  style: TextStyle(
                    color: Color(0xFF475569),
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                righticon(screenWidth, screenHeight),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                'Get reports in 24 hours',
                style: TextStyle(
                  color: Color(0xFF475569),
                  fontSize: 7,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 60),
              child: Row(
                children: [
                  Text(
                    '₹',
                    style: TextStyle(
                      color: Color(0xFF10217D),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.08,
                    ),
                  ),
                  Text(
                    '1000',
                    style: TextStyle(
                      color: Color(0xFF10217D),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.14,
                    ),
                  ),
                  SizedBox(
                    width: 29.43,
                    child: Text(
                      '1400',
                      style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 6.50,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                        height: 0.22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AddtoCart(updateCart: widget.updateCart),
            const SizedBox(
              height: 3,
            ),
            viewdetails(screenWidth, screenHeight),
          ],
        ),
      ),
    );
  }

  Widget righticon(double screenWidth, double screenHeight) {
    return Container(
        width: screenWidth * 0.06,
        height: screenHeight * 0.030,
        padding: const EdgeInsets.only(top: 6, left: 7, right: 8, bottom: 6),
        decoration: ShapeDecoration(
          color: const Color(0xFF16C2D5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Image.asset('images/teenyicons_shield-tick-solid.png'));
  }

  Widget viewdetails(double screenWidth, double screenHeight) {
    return Container(
      width: screenWidth * 0.2960,
      height: screenHeight * 0.03,
      padding: const EdgeInsets.all(6),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF10217D)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                    color: Color(0xFF10217D),
                    fontSize: 8,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.19,
                    letterSpacing: 0.25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddtoCart extends StatefulWidget {
  final Function(bool) updateCart;

  const AddtoCart({super.key, required this.updateCart});
  @override
  _AddtoCartState createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  bool isAddingToCart = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          isAddingToCart = true;
          count++;
          widget.updateCart(true);
          add = true;
        });

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isAddingToCart = false;
          });
        });
      },
      child: Container(
        width: screenWidth * 0.29,
        height: screenHeight * 0.033,
        decoration: ShapeDecoration(
          color: (count == 0)
              ? const Color(0xFF10217D)
              : (isAddingToCart && count == 1)
                  ? const Color(0xFFAFAFAF)
                  : const Color(0xFF16C2D5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            (count == 0)
                ? 'Add to cart'
                : (isAddingToCart && count == 1)
                    ? 'Adding to Cart'
                    : 'Added to Cart',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 8,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
