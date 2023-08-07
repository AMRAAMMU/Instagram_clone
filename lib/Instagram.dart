import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstagramClone extends StatefulWidget {
  const InstagramClone({super.key});

  @override
  State<InstagramClone> createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar:BottomNavigationBar(

          onTap: (index){
            setState(() {
              a=index;
            });
          },
          currentIndex: a,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: 'Add',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: 'Reel',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      image: DecorationImage(fit: BoxFit.fill,
                        image: AssetImage('assets/profile1.jpeg'),
                      )
                  ),
                ),
                label: 'Profile',
                backgroundColor: Colors.black
            ),

          ],
        ) ,
        body: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                // expandedHeight: 350,
                flexibleSpace: Stack(
                    children:[
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,

                        child: Row(
                          children: [
                            Text('Instagram',
                              style: TextStyle(fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontStyle:FontStyle.italic ),
                            ),
                            IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_drop_down_sharp,
                                    color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 70,
                          child: Icon(Icons.favorite_border,
                            color: Colors.white,)
                      ),
                      Positioned(
                          top: 10,
                          right: 30,
                          child: Icon(Icons.message_outlined,
                            color: Colors.white,)
                      )
                    ]
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*2.7,
                  // color: Colors.lightGreenAccent,
                  child: Column(
                    children: [Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(fit:BoxFit.fill,
                                      image: AssetImage('assets/profile2.avif')),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(width: 3,color: Colors.pinkAccent)
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('Your story',style: TextStyle(color: Colors.white),)
                            )
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(fit:BoxFit.fill,
                                      image: AssetImage('assets/profile3.jpg')),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(width: 3,color: Colors.pinkAccent)
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('Blossom',style: TextStyle(color: Colors.white),)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(fit:BoxFit.fill,
                                      image: AssetImage('assets/profile4.jpeg')),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(width: 3,color: Colors.pinkAccent)
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('Inspiring',style: TextStyle(color: Colors.white),)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(fit:BoxFit.fill,
                                      image: AssetImage('assets/profile5.jpg')),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(width: 3,color: Colors.pinkAccent)
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('Unplanned',style: TextStyle(color: Colors.white),)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(fit:BoxFit.fill,
                                      image: AssetImage('assets/profile6.jpg')),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(width: 3,color: Colors.pinkAccent)
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('Peace',style: TextStyle(color: Colors.white),)
                            )
                          ],
                        ),

                      ],
                    ),

                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1,color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10,right: 10),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(fit: BoxFit.fill,
                                      image: AssetImage('assets/profile4.jpeg')),
                                  border: Border.all(width: 2,color: Colors.pinkAccent)

                              ),

                            ),
                            Text('Inspiring',style: TextStyle(color: Colors.white),),
                            Container(
                                margin: EdgeInsets.only(left: 370),
                                child: Icon(Icons.more_vert,color: Colors.white,))
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fill,
                                image: AssetImage('assets/profile7.avif'))
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(Icons.account_circle_sharp)),


                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        height: 40,

                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 0.05,color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border,color: Colors.white,size: 26,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.message_outlined,color: Colors.white,size: 26,),
                            ),
                            Icon(Icons.send,color: Colors.white,size: 26,),
                            Container(
                              // color: Colors.amber,
                                margin: EdgeInsets.only(left: 375),
                                child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 26,))

                          ],

                        ),

                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('2398 likes',
                            style: TextStyle(color: Colors.white,
                                fontSize: 12,fontWeight: FontWeight.w400),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('I found my happy place,\nTankyou @TravelGo for the unforgettable trip',
                            style: TextStyle(color: Colors.white),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('View all 876 comments',
                            style: TextStyle(color: Colors.grey,fontSize: 13),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('1 hours ago',
                            style: TextStyle(color: Colors.grey,fontSize: 11),)),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black38,
                        child: Column(
                          children: [
                            SizedBox(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('Suggested for you',style:
                                TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text('See All',style:
                              TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 15),),
                            ),

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 240,
                                    width: 150,

                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(width: 0.4,color: Colors.white)
                                    ),


                                    child: Column(
                                      children: [
                                        // Align(
                                        //   alignment:Alignment.topRight,
                                        //     child: Icon(Icons.cancel_outlined,color: Colors.grey,size: 15,)),

                                        Container(
                                            margin: EdgeInsets.all(14),
                                            height: 110,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(110),
                                              image: DecorationImage(fit: BoxFit.fill,
                                                  image: AssetImage('assets/profile8.webp')),
                                            )
                                        ),
                                        Text('Hidden beauties',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(9),

                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                image: DecorationImage(fit: BoxFit.fill,
                                                    image: AssetImage('assets/profile9.jpeg')

                                                ),

                                              ),

                                            ),
                                            Text('Followed by\nTravelGo',style: TextStyle(color: Colors.grey,fontSize:12),),
                                          ],

                                        ),
                                        Container(
                                          height: 27,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(7)
                                          ),
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                        )

                                      ],
                                    ),
                                  ),
                                  //contain above
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 240,
                                    width: 150,

                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(width: 0.4,color: Colors.white)
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(14),
                                            height: 110,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(110),
                                              image: DecorationImage(fit: BoxFit.fill,
                                                  image: AssetImage('assets/profile10.jpeg')),
                                            )
                                        ),
                                        Text('Travel Freak',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(9),

                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                image: DecorationImage(fit: BoxFit.fill,
                                                    image: AssetImage('assets/profile5.jpg')

                                                ),

                                              ),

                                            ),
                                            Text('Followed by\nBag Packing',style: TextStyle(color: Colors.grey,fontSize:12),),
                                          ],

                                        ),
                                        Container(
                                          height: 27,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(7)
                                          ),
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                        )

                                      ],
                                    ),
                                  ),
                                  //contain above
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 240,
                                    width: 150,

                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(width: 0.4,color: Colors.white)
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(14),
                                            height: 110,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(110),
                                              image: DecorationImage(fit: BoxFit.fill,
                                                  image: AssetImage('assets/profile6.jpg')),
                                            )
                                        ),
                                        Text('Off Track views',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(9),

                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                image: DecorationImage(fit: BoxFit.fill,
                                                    image: AssetImage('assets/profile2.avif')

                                                ),

                                              ),

                                            ),
                                            Text('Followed by\nTimely Explor',style: TextStyle(color: Colors.grey,fontSize:12),),
                                          ],

                                        ),
                                        Container(
                                          height: 27,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(7)
                                          ),
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                        )

                                      ],
                                    ),
                                  ),

                                )
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1,color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10,right: 10),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(fit: BoxFit.fill,
                                      image: AssetImage('assets/profile3.jpg')),
                                  border: Border.all(width: 2,color: Colors.pinkAccent)

                              ),

                            ),
                            Text('Adventures',style: TextStyle(color: Colors.white),),
                            Container(
                                margin: EdgeInsets.only(left: 370),
                                child: Icon(Icons.more_vert,color: Colors.white,))
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fill,
                                image: AssetImage('assets/profile8.webp'))
                        ),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(Icons.account_circle_sharp)),

                      ),

                      Container(
                        width:MediaQuery.of(context).size.width,
                        height: 40,

                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 0.05,color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border,color: Colors.white,size: 26,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.message_outlined,color: Colors.white,size: 26,),
                            ),
                            Icon(Icons. send,color: Colors.white,size: 26,),
                            Container(
                              // color: Colors.amber,
                                margin: EdgeInsets.only(left: 375),
                                child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 26,))
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('3456 likes',
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Life is short and the world is wide.\n Better get started',style: TextStyle(color: Colors.white),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('View all 345 comments',style: TextStyle(color: Colors.grey,fontSize: 13),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('2 hours ago',style: TextStyle(color: Colors.grey,fontSize: 11),)
                      ),
                    ],
                  ),
                ),
              ),
            ],
            ),
    );
    }
}