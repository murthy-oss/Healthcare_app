// ignore_for_file: file_names, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers



import 'package:flutter/material.dart';
import 'package:health_care_app/date.dart';
import 'package:health_care_app/sucessPage.dart';

bool confirm = false;

class Viewdetails extends StatefulWidget {
  final String split;
  const Viewdetails(this.split, {Key? key}) : super(key: key);
  @override
  State<Viewdetails> createState() => _ViewdetailsState();
}

class _ViewdetailsState extends State<Viewdetails> {
  @override
  void initState() {
    super.initState();
   
    confirm = false;
  }

  @override
  Widget build(BuildContext context) {
    final String split = widget.split;
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My cart',
          style: TextStyle(
            color: Color(0xFF2F2F2F),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.06,
          ),
        ),
      ),
      body: Container(
        width: screenWidth * 1.041,
        height: screenHeight * 1.081,
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
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Order review',
                  style: TextStyle(
                    color: Color(0xFF10217D),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 0.04,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: screenWidth*0.85,
              height: screenHeight*0.224,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDBDDE0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth*0.0021,
                    height: screenHeight*0.00069,
                    decoration: const ShapeDecoration(
                      color: Color(0xCC10217D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Pathology tests',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.10,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        'Thyroid Profile',
                        style: TextStyle(
                          color: Color(0xFF0F172A),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                                child: SizedBox(
                              width: 120,
                              height: 30,
                            )),
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                color: Color(0xFF1BA9B5),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.08,
                              ),
                            ),
                            //WidgetSpan(child: SizedBox(width:300,)),
                            TextSpan(
                              text: ' 1000/-',
                              style: TextStyle(
                                color: Color(0xFF1BA9B5),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 280),
                    child: Text(
                      '1400',
                      style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                        height: 0.13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2, color: Color(0xFF10217D)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: screenWidth*0.051,
                              height: screenHeight*0.0256,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(),
                              child: Image.asset(
                                  "images/material-symbols_delete-outline.png")),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Remove',
                                  style: TextStyle(
                                    color: Color(0xFF10217D),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2, color: Color(0xFF10217D)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: screenWidth*0.061,
                              height: screenHeight*0.030,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(),
                              child: Image.asset('images/tabler_upload.png')),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload prescription (optional)',
                                  style: TextStyle(
                                    color: Color(0xFF10217D),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: screenWidth*0.84,
                height: screenHeight*0.107,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 0.74,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFDBDDE0),
                    ),
                    borderRadius: BorderRadius.circular(5.89),
                  ),
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 10),
                        child: Container(
                          width: screenWidth*0.067,
                          height: screenHeight*0.033,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Image.asset('images/clarity_date-line.png'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("object");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCalendar()));
                        },
                        child: Container(
                          width: screenWidth*0.650,
                          height: screenHeight*0.041,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.32, vertical: 7.37),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.74, color: Color(0xFFCFD4DC)),
                              borderRadius: BorderRadius.circular(5.89),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x0C101828),
                                blurRadius: 1.47,
                                offset: Offset(0, 0.74),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: screenHeight*0.023,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            split == "" ? 'Select date' : split,
                                            style: split == ""
                                                ? const TextStyle(
                                                    color: Color(0xFF667084),
                                                    fontSize: 11.79,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.13,
                                                  )
                                                : const TextStyle(
                                                    color: Color(0xFF10217D),
                                                    fontSize: 11.79,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.13,
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
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: screenWidth*0.84,
              height: screenHeight*0.21,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.74,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDBDDE0),
                  ),
                  borderRadius: BorderRadius.circular(5.90),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'M.R.P Total',
                        style: TextStyle(
                          color: Color(0xFF475569),
                          fontSize: 10.33,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        '1400',
                        style: TextStyle(
                          color: Color(0xFF475569),
                          fontSize: 10.33,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: Color(0xFF475569),
                          fontSize: 10.33,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '400',
                        style: TextStyle(
                          color: Color(0xFF475569),
                          fontSize: 10.33,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Amount to be paid',
                        style: TextStyle(
                          color: Color(0xFF10217D),
                          fontSize: 14.76,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.07,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 14.76,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                            TextSpan(
                              text: ' 1000/-',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 14.76,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Total savings ',
                        style: TextStyle(
                          color: Color(0xFF0F172A),
                          fontSize: 11.81,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 14.76,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                            TextSpan(
                              text: ' 400/-',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 14.76,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: screenWidth*0.844,
              height: screenHeight*0.138,
              padding: const EdgeInsets.all(11.77),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.74, color: Color(0xFFEAECF0)),
                  borderRadius: BorderRadius.circular(5.88),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight*0.1088,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 1.47),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          print('touch');
                                          setState(() {
                                            confirm = true;
                                          });
                                        },
                                        child: Container(
                                          width: screenWidth*0.03,
                                          height: screenHeight*0.015,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: confirm
                                              ? BoxDecoration(
                                                  color: const Color(0xFF10217D),
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'images/check.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              : ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        width: 0.74,
                                                        color:
                                                            Color(0xFFCFD4DC)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.88),
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          const SizedBox(width: 5.88),
                          Expanded(
                            child: Container(
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Hard copy of reports',
                                        style: TextStyle(
                                          color: Color(0xFF344053),
                                          fontSize: 10.30,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Reports will be delivered within 3-4 working days. Hard ',
                                        style: TextStyle(
                                          color: Color(0xFF667084),
                                          fontSize: 10.30,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'copy charges are non-refundable once the reports have ',
                                        style: TextStyle(
                                          color: Color(0xFF667084),
                                          fontSize: 10.30,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'been dispatched.',
                                            style: TextStyle(
                                              color: Color(0xFF667084),
                                              fontSize: 10.30,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '₹150 per person',
                                            style: TextStyle(
                                              color: Color(0xFF667084),
                                              fontSize: 10.30,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:(confirm && split!=""
                  )?const Color(0xFF10217D): const Color.fromRGBO(176, 176, 176, 1),
                  fixedSize: const Size(330, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the border radius
                  ), // Set the text color
                ),
                onPressed: () {
                  (confirm && split!=""
                  )?( Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sucess(split)))):null;
                        
                },
                child: const Text('Schedule'))
          ],
        ),
      ),
    );
  }
}
