import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../model/story_model.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  List<Story> _stories = [
    Story("assets/images/user_1.jpg", "Jazmin"),
    Story("assets/images/user_2.jpg", "Sylvester"),
    Story("assets/images/user_3.jpg", "Lavina"),
    Story("assets/images/user_1.jpg", "Jazmin"),
    Story("assets/images/user_2.jpg", "Sylvester"),
    Story("assets/images/user_3.jpg", "Lavina"),
  ];

  List<Post> _posts = [
    Post(
        userName: "Brianne",
        userImage: "assets/images/user_1.jpg",
        postImage: "assets/images/feed_1.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Henri",
        userImage: "assets/images/user_2.jpg",
        postImage: "assets/images/feed_2.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Mariano",
        userImage: "assets/images/user_3.jpg",
        postImage: "assets/images/feed_3.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: SingleChildScrollView(
  child: Container(
  child: Column(
    children: [
      Divider(),

    //   #stories
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Stories",style: TextStyle(color: Colors.grey,fontSize: 14),),
            Text("Watch all",style: TextStyle(color: Colors.grey,fontSize: 14),),
          ],
        ),
      ),
      //#story_list
  Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 110,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _stories.length,
      itemBuilder: (context,index){
        return _itemOfStory(_stories[index]);
      },
    ),
  ),
    //   #post_List
      Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _posts.length,
          itemBuilder: (context, index){
            return _itemOfPost(_posts [index]);
          },
        ),
      ),
    ],
  ),
  ),
),
      );
  }
  // #story_list
  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3,color: Color(0xFF8e444ad))
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child:Image(
                  image:AssetImage(story.image!),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(story.name!),
      ],
    );
  }
//   #post_list
Widget _itemOfPost(Post post){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: AssetImage(post.userImage!),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10,),
                Text(post.userName),
                Expanded(child: SizedBox.shrink()),
                IconButton(onPressed:),
              ],
            ),
          ),
        ],
      ),
    );
}
}
