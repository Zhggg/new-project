// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_const, sized_box_for_whitespace, must_be_immutable, avoid_unnecessary_containers, deprecated_member_use, prefer_final_fields, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:new_pustak/constant/color.dart';
import 'package:new_pustak/drawer/aboutus.dart';
import 'package:new_pustak/drawer/contact.dart';
import 'package:new_pustak/drawer/create_dashboard.dart';
import 'package:new_pustak/drawer/feedback.dart';
import 'package:new_pustak/drawer/membership.dart';
import 'package:new_pustak/drawer/search.dart';
import 'package:new_pustak/view/letgo.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
// import 'package:file_picker/file_picker.dart';

import 'item_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  int _selectedItem = 0;
  // List<BottomNavigationBarItem> items = [
  //   BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
  //   BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
  //   BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ""),
  //   BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
  //   BottomNavigationBarItem(icon: Icon(Icons.card_membership), label: ""),
  // ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 22, vsync: this);
    return SafeArea(
      child: DefaultTabController(
        length: 22,
        child: Scaffold(
          drawer: drawer(context),
          appBar: AppBar(
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'इ-पुस्तक',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))
              ]),
            ),
            backgroundColor: primarycolor,
            bottom: _selectedItem == 0
                ? TabBar(
                    // controller: _tabController,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicator:
                        CircleTabIndicator(color: Colors.black, radius: 4.0),
                    tabs: [
                      Tab(text: "Nearly New"),
                      Tab(text: "Adventure & Action"),
                      Tab(text: "Classics"),
                      Tab(text: "Comic"),
                      Tab(text: "Detective & Mystery"),
                      Tab(text: "Fantasy"),
                      Tab(text: "Historical Fiction"),
                      Tab(text: "Horror"),
                      Tab(text: "Literary Fiction"),
                      Tab(text: "Romance"),
                      Tab(text: "Science Fiction"),
                      Tab(text: "Short Stories "),
                      Tab(text: "Suspense and Thrillers"),
                      Tab(text: "Women's Fiction"),
                      Tab(text: "Biographies and Autobiographies"),
                      Tab(text: "Cookbooks"),
                      Tab(text: "Essays"),
                      Tab(text: "History"),
                      Tab(text: "Memoir"),
                      Tab(text: "Poetry"),
                      Tab(text: "Self-Help"),
                      Tab(text: "True Crime"),
                    ],
                  )
                : null,
          ),
          body: _homepageWidgets[_selectedItem],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_membership), label: ""),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedItem,
            onTap: (int index) {
              _selectedItem = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _homepageWidgets = [
    /// ------------------
    ///   Home page
    /// ------------------
    TabBarView(
      children: [
        Column(
          children: [
            Image(
              image: AssetImage('assets/sale.png'),
            ),
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.0);
                },
                itemBuilder: (context, index) {
                  // var dataINdex = foodItem[index];
                  return ItemWidget(
                    title: "Rich Dad Poor Dad",
                    imgUrl: "assets/book1.jpg",
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image(
              image: AssetImage('assets/sale.png'),
            ),
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.0);
                },
                itemBuilder: (context, index) {
                  // var dataINdex = foodItem[index];
                  return ItemWidget(
                    title: "I'm in a second page",
                    imgUrl: "assets/book1.jpg",
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image(
              image: AssetImage('assets/sale.png'),
            ),
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.0);
                },
                itemBuilder: (context, index) {
                  // var dataINdex = foodItem[index];
                  return ItemWidget(
                    title: "I'm in a Third page",
                    imgUrl: "assets/book1.jpg",
                  );
                },
              ),
            ),
          ],
        ),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container()
      ],
    ),

    /// ------------------
    ///   Search page
    /// ------------------
    Container(
      padding: EdgeInsets.only(
        top: 30.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey[500]),
            suffixIcon: Icon(
              Icons.search,
              size: 18.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
          ),
        ),
      ]),
    ),

    /// ------------------
    ///   Upload page
    /// ------------------
    Container(
      child: Center(
        child: Column(
          File _image;

          Future getImage() async{
            var image = await ImagePicker.pickImage(source: ImageSource.camera);
          }
        ),
      ),
    ),

    /// ------------------
    ///   Notification page
    /// ------------------
    Container(),

    /// ------------------
    ///   Membership page
    /// ------------------
    Container(),
  ];

  Drawer drawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text("R"),
            ),
            accountName: Text("Rakish Rai"),
            accountEmail: Text("Rakishthulung@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Your Dashboard'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateDashboard()));
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Search()));
            },
          ),
          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text('Get Membership'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Membership()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 1,
            height: 10,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact us'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FeedbackPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About Us'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LetGo()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
