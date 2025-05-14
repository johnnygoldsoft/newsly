import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Newsdetailscreen extends StatefulWidget {
  const Newsdetailscreen({super.key});

  @override
  State<Newsdetailscreen> createState() => _NewsdetailscreenState();
}

class _NewsdetailscreenState extends State<Newsdetailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(32.r),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.upload_outlined,
                      color: Colors.black87,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.save_outlined,
                      color: Colors.black87,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 0.8, bottom: 0.8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/perso2.jpg"),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "CNN Indonnesia",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 4,
                        height: 4,
                        color: Colors.black87,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Feb 28 2023",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 4,
                        height: 4,
                        color: Colors.black87,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "World",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "More storms hit central US with tornadoes and severe winds. while the West and North brace for more rain and show.",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/images/news1.jpg"),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Damage of tornadoes",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "CNN -- As severe storms prompted at least nine tornado reports in ports of the central US. a barrage of snow. rain and harsh wind was forecast Monday in places from the West Coast to the Great Lakes including some still without power following a similar string of severe weather last week.",
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "More than 216.000 US homes and businesses were without power as of Monday evening according to PowerOutage us. More than two-tirds of the outages were in Michigan where a previous ice storm damages trees and utility line almost 55.000. More than two-tirds of the outages were in Michigan where a previous ice storm damages trees and utility line almost 55.000. More than two-tirds of the outages were in Michigan where a previous ice storm damages trees and utility line almost 55.000.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        ),

        // floating widget

        /*

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 3,
                  spreadRadius: 0.1,
                  offset: Offset(0, 4),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Align icons evenly
              children: [Text("6.7k")],
            ),
          ),
        )

        */

        Positioned(
          bottom: 10,
          right: MediaQuery.of(context).size.width / 6,
          child: Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.r)),
            child: Center(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.black54,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("6.7k"),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.black54,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("12k"),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.headphones,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        /*

        Padding(
          padding: EdgeInsets.only(bottom: 8.0.w),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(24.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("6.7k"),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("12k"),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.headphones,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )

        */
      ]),
    );
  }
}
