import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meta_project/subpage.dart';

import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

         toolbarHeight: h*0.15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi,Jerel",style: TextStyle(fontSize: w*0.06,fontWeight: FontWeight.w700),),
                    Text("Find your lessons today!",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w500),),
                  ],
                ),
                Container(
                  width: w*0.15,
                  height: w*0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                  child: Center(child: Icon(Icons.notification_add),),
                )
              ],
            )
      ),
       body: SingleChildScrollView(
         child: Container(
           width: w*1,
           child: Padding(
             padding:  EdgeInsets.all(w*0.03),
             child: Column(
               children: [
               Row(
                 children: [
                   Container(
                     width: w*0.7,
                     height: w*0.13,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(w*0.1)
                     ),
                     child: TextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(w*0.1),
                                borderSide: BorderSide(color: Colors.white,width:w*0.007),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(w*0.1),
                                borderSide: BorderSide(color: Colors.white,width:w*0.007),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search now...",
                              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                            ),
                          ),
                   ),
                   SizedBox(width: w*0.07,),
                   Container(
                     width: w*0.15,
                     height: w*0.15,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(w*0.03),
                       // image:
                     ),
                     child: Center(child: Icon(Icons.menu,color: Colors.white,),),
                   ),
                 ],
               ),
                 SizedBox(height: w*0.07,),
                 CarouselSlider.builder(
                   itemCount: 3,
                   options: CarouselOptions(
                     autoPlay: true,
                     viewportFraction: 1,
                     autoPlayAnimationDuration: Duration(
                       seconds: 2,
                     ),
                   ),
                   itemBuilder: (BuildContext context, int index, int realIndex) {
                     return  Container(
                       width: w*0.8,
                       height: w*0.5,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(w*0.04),
                         color: Colors.blue,
                         image: DecorationImage(image: AssetImage("assets/img.png"),fit: BoxFit.fill)
                       ),
                     );
                   },
                 ),
                 SizedBox(height: w*0.07,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Popular lessons",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w700),),
                     InkWell(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Subpage(),));
                         },
                         child: Text("See All",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w700,color: Colors.blue),)),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     width: w*1,
                     height: w*0.7,
                     child: ListView.separated(
                       physics: BouncingScrollPhysics(),
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (BuildContext context, int index) {
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: InkWell(
                             onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => Subpage(),));
                             },
                             child: Container(
                               width: w*0.65,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(w*0.03),
                                 color: Colors.white,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.black.withOpacity(0.25),
                                       blurRadius:4,
                                       spreadRadius: 2,
                                       offset: Offset(0,4),
                                     ),
                                   ]
                               ),
                               child: Padding(
                                 padding:  EdgeInsets.all(w*0.04),
                                 child: Column(
                                   children: [
                                     Container(
                                       width: w*0.6,
                                       height: w*0.4,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(w*0.03),
                                     image: DecorationImage(image: AssetImage("assets/img.png"),fit: BoxFit.fill)
                                   ),
                                     ),
                                     Text("Figma master class ",style: TextStyle(fontSize: w*0.06,fontWeight: FontWeight.w700),),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Container(
                                           width: w*0.35,
                                           height: w*0.08,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(w*0.03),
                                             color: Colors.white30,
                                           ),
                                           child: Center(
                                             child: Row(
                                               children: [
                                                 Icon(Icons.timelapse,color: Colors.blue,),
                                                 Text("6h 30min",style: TextStyle(color: Colors.blue),),
                                               ],
                                             ),
                                           ),
                                         ),
                                         Row(
                                           children: [
                                             Icon(Icons.star,color: Colors.amber,size: w*0.05,),
                                             Text("4.9"),
                                           ],
                                         )
                                       ],
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         );
                       }, separatorBuilder: (BuildContext context, int index) {
                         return SizedBox(width: w*0.03,);
                     },
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
    );
  }
}
