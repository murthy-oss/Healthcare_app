// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:health_care_app/ViewDetails.dart';
import 'package:table_calendar/table_calendar.dart';

bool fixdate=false;
class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {

DateTime today =DateTime.now();
DateTime selectTime =DateTime.now();@override
  void initState() {
   
    super.initState();
    fixdate=false;
  }
    void _onDaySelected(DateTime day,DateTime focusedDay){
  setState(() {
    today=day;
   
  });
    }
  @override
  Widget build(BuildContext context) {
    
   Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Appointment"),
      ),
      body: Column(
        children: [
          cont(screenWidth,screenHeight),
          const SizedBox(height: 10,),
          const Row(
            children: [
              SizedBox(width: 10,),
              Text(
'Select Time',
style: TextStyle(
color: Color(0xFF2F2F2F),
fontSize: 14,
fontFamily: 'Inter',
fontWeight: FontWeight.w700,
height: 0.09,
),
),

            ],
            
          ),
          const SizedBox(height: 10,),
          time(today.toString().split(" ")[0],screenWidth,screenHeight),
           const SizedBox(height: 10,),
             Nextbutton(today.toString().split(" ")[0],tapnumber),
           
        ],
      ),
    );
  }

  Widget Nextbutton(String split, int tapnumber) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, 
            backgroundColor: fixdate? const Color(0xFF10217D):const Color.fromRGBO(176, 176, 176, 1),
            fixedSize: const Size(350, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Set the border radius
            ),// Set the text color
          ),
            onPressed: (){
               if(tapnumber>8){split="$split  ($tapnumber AM)";}
        else{
          split="$split  ($tapnumber PM)";
        }
      Navigator.push(context, MaterialPageRoute(builder: (context) => Viewdetails(split)));
              print(split);
            },
             child: Text(fixdate?"Confirm":'Next'));
  }

  Widget time(String split, double screenWidth, double screenHeight) {
    return Container(
          
     width: screenWidth*0.892,
     height: screenHeight*0.250,
    
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),
    shadows: const [
    BoxShadow(
    color: Color(0x0C000000),
    blurRadius: 24,
    offset: Offset(0, 4),
    spreadRadius: 0,
    )
    ],
    ),
    child:Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 50.0,
          mainAxisSpacing: 15.0,
        childAspectRatio: 2.5,  
        
    mainAxisExtent: 28.0,
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
            
          return timeslot(index+8>12?(index+8)-12:index+8,split,screenWidth,screenHeight);
        },
      ),
    )
          
        );
  }
int tapnumber=9;
  Widget timeslot(int index, String split, double screenWidth, double screenHeight) {
   
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4.0),
      border: Border.all(width: 2, color: const Color(0xFF10217D)), // Set the border radius
    ),
    child: InkWell(
      onTap: () {
        setState(() {
           tapnumber=index;
            fixdate=true;
        });
        
        Nextbutton(split,tapnumber);
       print(split);
        print(tapnumber);
      },
      child: Container(
        width: screenWidth*0.255,
        height: screenHeight*0.192,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: (tapnumber==index)? const Color(0xFF10217D):null,
        ),
        child:Text(
           (index>7 && index<12)?"$index:00AM":'$index:00PM',
          style: TextStyle(
            color: (tapnumber==index)? Colors.white:Colors.black,
          ),
        )
      ),
    ),
  );
}


  Widget cont(double screenWidth, double screenHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        const SizedBox(height: 5,),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
'Select Date',
style: TextStyle(
color: Color(0xFF2F2F2F),
fontSize: 14,
fontFamily: 'Inter',
fontWeight: FontWeight.w700,
height: 0.09,
),
)
        ),
        Padding(
          padding: const EdgeInsets.only(left: 34,right: 34,top: 10),
          child: Container(
 width: screenWidth*0.892,
 height: screenHeight*0.467,

clipBehavior: Clip.antiAlias,
decoration: ShapeDecoration(
color: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12),
),
shadows: const [
BoxShadow(
color: Color(0x0C000000),
blurRadius: 24,
offset: Offset(0, 4),
spreadRadius: 0,
)
],
),
            child: TableCalendar(
              locale: "en_US",
              rowHeight: 43,
               headerStyle: 
                const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                
                ),
                calendarStyle: const CalendarStyle(
    selectedDecoration: BoxDecoration(
      color: Color(0xFF10217D)                , 
      shape: BoxShape.circle, 
    ),
    
  ),
                
               availableGestures: AvailableGestures.all,
               selectedDayPredicate:(day) => isSameDay(day, today),
               focusedDay: today,
               firstDay: today,
               
               lastDay: DateTime.utc(2025,12,30),
               onDaySelected: _onDaySelected,
               
              ),
          ),
        ),
      ],
    );
  }
}
