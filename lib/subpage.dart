import 'package:flutter/material.dart';

import 'main.dart';

class Subpage extends StatefulWidget {
  const Subpage({super.key});

  @override
  State<Subpage> createState() => _SubpageState();
}

class _SubpageState extends State<Subpage> {

  bool tab1 = true;
  bool tab2 = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: w*0.2,
          width: w*1,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      color: Colors.white,
                    ),
                      child: Text("\$399",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.06,color: Colors.blue),)),
                  Container(
                    height: w*0.14,
                    width: w*0.6,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(w*0.2),
                    ),
                    child: Center(child: Text("Entroll Now",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),)),
                  ),                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios
            ),
          ),
          title: Text("Course Overview",style: TextStyle(fontSize: w*0.06,fontWeight: FontWeight.w700),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/heart.png"),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: w*1,
            child: Padding(
              padding:  EdgeInsets.all(w*0.03),
              child: Column(
                children: [
                  Container(
                    width: w*0.8,
                    height: w*0.7,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img.png"),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(w*0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius:4,
                            spreadRadius: 2,
                            offset: Offset(0,4),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: w*0.03,),
                  Text("Figma master class for beginners",style: TextStyle(fontSize: w*0.06,fontWeight: FontWeight.w700),),
                  SizedBox(height: w*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time,color: Colors.grey,),
                          Text("6h 30min  28 lessons",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w500,color: Colors.grey),),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: w*0.05,),
                            Text("4.9",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w500,color: Colors.blue),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: w*0.01,),
                 Container(
                   child: TabBar(
                     labelColor: Colors.blue,
                     unselectedLabelColor: Colors.grey,
                     indicatorColor: Colors.blue,
                     dividerHeight: w*0,
                     tabs: [
                       Tab(text: "Lessons",),
                       Tab(text: "Description",)
                     ],
                   ),
                 ),
                 Container(
                   width: w*1,
                   height: w*0.7,
                   child: TabBarView(
                       children: [
                   Container(
                      width: w*1,
                       child:ListView.separated(
                           physics: BouncingScrollPhysics(),
                           shrinkWrap: true,
                           scrollDirection: Axis.vertical,
                           itemBuilder: (context, index) {
                             return Container(
                               width: w*1,
                               height: w*0.2,
                               color: Colors.transparent,
                               child:  Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     CircleAvatar(
                                       backgroundImage: AssetImage("assets/play.jpeg"),
                                       backgroundColor: Colors.blue,
                                       radius: w*0.06,
                                     ),
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: w*0.03,),
                                         Text("Introduction to figma",style: TextStyle(fontWeight: FontWeight.w700),),
                                         Text("04.28 min",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                                       ],
                                     ),
                                     Icon(Icons.arrow_forward_ios_sharp)
                                   ],
                                 ),
                             );
                           },
                           separatorBuilder: (context, index) {
                             return SizedBox(height: w*0.02,);
                           },
                           itemCount: 5,
                       ),
                    ),
                         Container(
                           color: Colors.blue,
                         ),
                    ]
                   ),
                 )
                 // Row(
                 //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 //   children: [
                 //     InkWell(
                 //         onTap: () {
                 //           tab1=true;
                 //           tab2=false;
                 //           setState(() {
                 //
                 //           });
                 //         },
                 //         child: Text("Lessons",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,color: tab1?Colors.blue:Colors.grey),)),
                 //     InkWell(
                 //         onTap: () {
                 //           tab1=false;
                 //           tab2=true;
                 //           setState(() {
                 //
                 //           });
                 //         },
                 //         child: Text("Description",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,color: tab2?Colors.blue:Colors.grey),)),
                 //   ],
                 // ),
                 //  SizedBox(height: w*0.05,),
                 //  tab1?
                 //  Container(
                 //    width: w*1,
                 //     child:ListView.separated(
                 //         physics: BouncingScrollPhysics(),
                 //         shrinkWrap: true,
                 //         scrollDirection: Axis.vertical,
                 //         itemBuilder: (context, index) {
                 //           return Container(
                 //             width: w*1,
                 //             height: w*0.2,
                 //             color: Colors.transparent,
                 //             child:  Row(
                 //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 //                 crossAxisAlignment: CrossAxisAlignment.center,
                 //                 children: [
                 //                   CircleAvatar(
                 //                     backgroundImage: AssetImage("assets/play.jpeg"),
                 //                     backgroundColor: Colors.blue,
                 //                     radius: w*0.06,
                 //                   ),
                 //                   Column(
                 //                     mainAxisAlignment: MainAxisAlignment.start,
                 //                     crossAxisAlignment: CrossAxisAlignment.start,
                 //                     children: [
                 //                       SizedBox(height: w*0.03,),
                 //                       Text("Introduction to figma",style: TextStyle(fontWeight: FontWeight.w700),),
                 //                       Text("04.28 min",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                 //                     ],
                 //                   ),
                 //                   Icon(Icons.arrow_forward_ios_sharp)
                 //                 ],
                 //               ),
                 //           );
                 //         },
                 //         separatorBuilder: (context, index) {
                 //           return SizedBox(height: w*0.02,);
                 //         },
                 //         itemCount: 5,
                 //     ),
                 //  ):Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
