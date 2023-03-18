import 'package:flutter/material.dart';
import 'package:instagram_app/views/tabs/feed_tab.dart';
import 'package:instagram_app/views/tabs/reels_tab.dart';
import 'package:instagram_app/views/tabs/tagged_tab.dart';

class ProfileScreen extends StatelessWidget {
//tabs
  final List<Widget> tabs = [
    //feed tabs
    Tab(
      icon: Icon(
        Icons.home,
        color: Colors.grey,
      ),
    ),
//reals tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
// tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  // tab bar views
  final List<Widget> tabBarViews =  [
    //feed view
    FeedTab(),
    //reals view
    ReelsTab(),
    // tagged view
    TaggedTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            //profile details

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '345',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                //profile pic
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[400]),
                  ),
                ),
                //followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '21.5K',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Followers', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            // name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kiki',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' | ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //  bio
            Text(
              'UI Designer * Programmer * Developer',
              style: TextStyle(
                color: Colors.grey[700],
              ),
                   textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            //  link
            Text(
              'https://www.youtube.com/',
              style: TextStyle(
                color: Colors.blue[500],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
           const    SizedBox(height: 20,),
            //  buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text('Edit Profile'),
                    ),
                  )),
              const    SizedBox(width: 10,),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.black,
                                 borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                        child: Text('Contact',
                            style: TextStyle(color: Colors.white))),
                  )),
                ],
              ),
            ),
           
                const    SizedBox(height: 20,),
            // tabbar
            TabBar(tabs: tabs),
            SizedBox(
              height: 1000,
              child: TabBarView(children: tabBarViews))
          ],
        ),
      ),
    );
  }
}
