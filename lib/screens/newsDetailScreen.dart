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
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 65.h, // Hauteur de la barre d'application
          automaticallyImplyLeading: false,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(32.r)),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 1.0.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 25,
                        )),
                    Stack(children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.black,
                            size: 25,
                          )),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                          fontSize: 18.sp,
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
                          fontSize: 18.sp,
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
                          fontSize: 18.sp,
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
                    fontSize: 24.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/images/news1.jpg"),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text("Dammage of tornadoes"),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "CNN -- As severe storms prompted at least nine tornado reports in ports of the central US. a barrage of snow. rain and harsh wind was forecast Monday in places from the West Coast to the Great Lakes including some still without power following a similar string of severe weather last week.",
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "More than 216.000 US homes and businesses were without power as of Monday evening according to PowerOutage us. More than two-tirds of the outages were in Michigan where a previous ice storm damages trees and utility line almost 55.000.",
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
