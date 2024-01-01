import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Facebook",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.search,color: Colors.grey.shade800,),
          ),
          IconButton(onPressed: () {},
            icon: Icon(Icons.camera_alt,color: Colors.grey.shade800,),
          ),
        ],
      ),
       body: ListView(
         children: [
           // #post create
           Container(
             height: 120,
             color: Colors.white,
             padding: EdgeInsets.only(top: 10,left: 10,right: 10),
             child: Column(
               children: [
                 Expanded(
                   child: Row(
                     children: [
                       Container(
                         width: 45,
                         height: 45,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(
                             image: AssetImage("assets/images/user_3.jpeg")
                           )
                         ),
                       ),
                       SizedBox(width: 10,),
                        Expanded(
                            child: Container(
                              height: 46,
                              padding: EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.shade800
                                )
                              ),
                               child: TextField(
                                 decoration: InputDecoration(
                                   hintText: "What is on mind?",
                                   border: InputBorder.none,
                                   hintStyle: TextStyle(color: Colors.grey.shade500)
                                 ),
                               ),
                            )
                        ),
                     ],
                   ),
                 ),
                 Expanded(
                     child: Row(
                       children: [

                         Expanded(
                             child:  Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.video_call,color: Colors.red,),
                                 SizedBox(width: 5,),
                                 Text("Live"),
                               ],
                             )
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 15, bottom: 15),
                           width: 1,
                           color: Colors.grey,
                         ),
                         Expanded(
                             child:  Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.photo,color: Colors.red,),
                                 SizedBox(width: 5,),
                                 Text("Photo"),
                               ],
                             )
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 15, bottom: 15),
                           width: 1,
                           color: Colors.grey,
                         ),
                         Expanded(
                             child:  Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.location_on,color: Colors.red,),
                                 SizedBox(width: 5,),
                                 Text("Chech in"),
                               ],
                             )
                         ),
                       ],

                     )
                 ),

               ],
             ),
           ),

           // #post strories
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(top: 10,bottom: 5),
              height: 200,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   makeStory(
                     storyImage: "assets/images/user_2.jpeg",
                     userImage: "assets/images/feed_5.jpeg",
                     userName: "User Five"
                   ),
                  makeStory(
                      storyImage: "assets/images/user_3.jpeg",
                      userImage: "assets/images/story_4.jpeg",
                      userName: "User Four"
                  ),
                  makeStory(
                      storyImage: "assets/images/user_2.jpeg",
                      userImage: "assets/images/feed_5.jpeg",
                      userName: "User Three"
                  ),
                  makeStory(
                      storyImage: "assets/images/user_3.jpeg",
                      userImage: "assets/images/story_4.jpeg",
                      userName: "User Two"
                  ),
                  makeStory(
                      storyImage: "assets/images/user_2.jpeg",
                      userImage: "assets/images/story_4.jpeg",
                      userName: "User one"
                  ),

                ],
              ),
            ),

           //#post feed
           makeFeed(
               userName: "User Two",
               userImage: "assets/images/user_2.jpeg",
               feedTime: "1 hr ago",
               feedText: "All the Lorem Ipsim generator on the Internet tend to repeat",
               feedImage: "assets/images/feed_3.jpeg"
           )
         ],
       ),
    );
  }
  // #post strories's Widget
    Widget makeStory({storyImage,userImage,userName}) {
    return AspectRatio(aspectRatio: 1.3/2,
    child: Container(
        margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue,width: 2),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(userName,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),
    );
    }

   //#post feed userImage's Widget
  Widget makeFeed({userName,userImage,feedTime,feedText,feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,style: TextStyle(color: Colors.grey.shade900,fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3,),
                            Text(feedTime,style: TextStyle(fontSize: 15,color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz,size: 30, color: Colors.grey.shade600,))
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText,style: TextStyle(fontSize: 15,color: Colors.grey.shade800,height: 1.5,letterSpacing: 0.7),),
                SizedBox(height: 20,),
              ],
            ),
          ),

          // #photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover
              )
            ),
          ),
          // #Likes
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                children: [
                    makeLike(),
                  // Transform.translate(offset: Offset(-5,0), ning vazifasi
                    // like va love ustma ust qilib beradi 0.5%
                  Transform.translate(offset: Offset(-5,0),
                  child: makeLove(),
                  ),
                  SizedBox(width: 5,),
                  Text("2.5K",style: TextStyle(fontSize: 15,color: Colors.grey.shade800),),
                   ]
                ),
                Text("400 comments",style: TextStyle(fontSize: 13,color: Colors.grey.shade800),)

              ],
            ),
          ),
          // #like,comment,share
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive:true),
               makeCommentButton(),
                makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
       child: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.thumb_up,color: isActive? Colors.blue: Colors.grey,size: 18,),
              SizedBox(width: 5,),
             Text("Like",style: TextStyle(color:isActive? Colors.blue:Colors.grey),),
           ],
         ),
       ),
    );
  }

   Widget makeCommentButton() {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
       child: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.chat,color: Colors.grey,size: 18,),
             SizedBox(width: 5,),
             Text("Comment",style: TextStyle(color: Colors.grey),),
           ],
         ),
       ),
     );
   }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,color: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Share",style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }

   Widget makeLike () {
     return Container(
       width: 25,
       height: 25,
       decoration: BoxDecoration(
         color: Colors.blue,
         shape: BoxShape.circle,
         border: Border.all(color: Colors.white),
       ),
       child: Center(
         child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
       ),
     );
   }

  Widget makeLove () {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }

}
