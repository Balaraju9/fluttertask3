

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:percent_indicator/percent_indicator.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,

      ],
      builder: (context) =>  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.orangeAccent,
      //   leading: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
      //   actions: [
      //     Icon(Icons.more_vert,color: Colors.white,)
      //
      //   ],
      //   title: Center(child: Text("Curse",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      // ),

      body: Stack(
        children: [


          Container(
            height: 370,

            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(

                bottomLeft: Radius.elliptical(298, 199),
                bottomRight: Radius.elliptical(298, 199),

              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_sharp,color: Colors.white,),
                    Text("Curse",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 21),),
                    Icon(Icons.more_vert,color: Colors.white,size: 26,)


                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            "Spanish",
                            style: TextStyle(

                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Container(
                            height: 32,
                            width: 120-10,
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Beginner", style: TextStyle(color: Colors.orange[200],fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.6),
                                  child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.orangeAccent,size: 19,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 3.0,
                        percent: 0.43, // 43% progress
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "43",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "%",
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Completed",
                              style: TextStyle(fontSize: 8, color: Colors.white),
                            ),
                          ],
                        ),
                        progressColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 36),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Row(
                        children: [
                          Icon(Icons.diamond, color: Colors.pinkAccent),
                          Icon(Icons.diamond, color: Colors.pinkAccent),
                          SizedBox(width: 5),
                          Text("2 Milestones", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 238.0),
            child: Container(
              height: 1000,
              child: Positioned(
                top: 270, // Adjust position based on design
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height - 370, // Adjust height dynamically
                  padding: EdgeInsets.all(16),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 20,
                       children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: buildCategoryCard("Basics", Icons.file_copy_sharp, 4, 5, Colors.orange[300]!),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: buildCategoryCard("Occupations", Icons.business_center, 1, 5, Colors.red[400]!),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: buildCategoryCard("Conversation", Icons.chat, 3, 5, Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: buildCategoryCard("Places", Icons.location_on, 1, 5, Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: buildCategoryCard("Family", Icons.group, 3, 5, Colors.purple),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0-3),
                        child: buildCategoryCard("Foods", Icons.restaurant, 2, 5, Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget buildCategoryCard(String title, IconData icon, int progress, int total, Color color) {
    return Container(
      height: 10,
      width: 10,
      padding: EdgeInsets.only(left: 16,right: 16,bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 33.0,top: 23),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color with transparency
                    blurRadius: 6, // Spread of the shadow
                    offset: Offset(0, 7), // Position of the shadow
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 26,
                child: Icon(icon, color: color,size: 29,),
              ),
            ),

          ),

          SizedBox(height: 7),
          Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$progress", style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold)),
              SizedBox(
                width: 0.2,
              ),
              Text("/$total", style: TextStyle(color: Colors.grey,fontSize: 10)),
            ],
          )),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                child: LinearProgressIndicator(
                  value: progress / total,
                  color: color,
                  backgroundColor: color.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
