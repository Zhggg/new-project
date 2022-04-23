// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_const, sized_box_for_whitespace, must_be_immutable, avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// import 'package:flutter_epustak/constant/color.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 22, vsync: this);
//     return SafeArea(
//         child: Scaffold(
//             drawer: drawer(),
//             appBar: AppBar(
//               title: RichText(
//                 text: TextSpan(children: [
//                   TextSpan(
//                       text: 'इ-पुस्तक',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                       ))
//                 ]),
//               ),
//               backgroundColor: primarycolor,
//             ),
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Image(
//                     image: AssetImage('assets/sale.png'),
//                   ), //Now we will be working for tabbar
//                   Container(
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: TabBar(
//                         controller: _tabController,
//                         isScrollable: true,
//                         labelPadding:
//                             const EdgeInsets.only(left: 20, right: 20),
//                         labelColor: Colors.black,
//                         unselectedLabelColor: Colors.grey,
//                         indicator: CircleTabIndicator(
//                             color: Colors.black, radius: 4.0),
//                         tabs: [
//                           Tab(text: "Nearly New"),
//                           Tab(text: "Adventure & Action"),
//                           Tab(text: "Classics"),
//                           Tab(text: "Comic"),
//                           Tab(text: "Detective & Mystery"),
//                           Tab(text: "Fantasy"),
//                           Tab(text: "Historical Fiction"),
//                           Tab(text: "Horror"),
//                           Tab(text: "Literary Fiction"),
//                           Tab(text: "Romance"),
//                           Tab(text: "Science Fiction"),
//                           Tab(text: "Short Stories "),
//                           Tab(text: "Suspense and Thrillers"),
//                           Tab(text: "Women's Fiction"),
//                           Tab(text: "Biographies and Autobiographies"),
//                           Tab(text: "Cookbooks"),
//                           Tab(text: "Essays"),
//                           Tab(text: "History"),
//                           Tab(text: "Memoir"),
//                           Tab(text: "Poetry"),
//                           Tab(text: "Self-Help"),
//                           Tab(text: "True Crime"),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: double.maxFinite,
//                     height: 1000,
//                     child: TabBarView(controller: _tabController, children: [
//                       ListView.builder(
//                           itemCount: 1,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 2,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 3,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 4,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 5,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 6,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 7,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 8,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 9,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 10,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 11,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 12,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 13,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 14,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 15,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 16,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 17,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 18,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 19,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 20,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 21,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),
//                       ListView.builder(
//                           itemCount: 22,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               height: 200,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/book1.jpg'))),
//                             );
//                           }),

//                       // Container(
//                       //   color: Colors.white10,
//                       //   child: Column(
//                       //     children: [
//                       //       Row(
//                       //         children: [
//                       //           Container(
//                       //             height: 180,
//                       //             width: 150,
//                       //             child: Image(
//                       //               image: AssetImage('assets/Logo.png'),
//                       //             ),
//                       //             decoration: BoxDecoration(
//                       //               color: Colors.grey,
//                       //             ),
//                       //           ),
//                       //         ],
//                       //       )
//                       //     ],
//                       //   ),
//                       // ),
//                     ]),
//                   )
//                 ],
//               ),
//             )));
//   }

//   Drawer drawer() {
//     return Drawer(
//       child: Column(
//         children: const [
//           UserAccountsDrawerHeader(
//             currentAccountPicture: CircleAvatar(
//               child: Text("R"),
//             ),
//             accountName: Text("Rakish Rai"),
//             accountEmail: Text("Rakishthulung@gmail.com"),
//           ),
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text('Create Dashboard'),
//           ),
//           ListTile(
//             leading: Icon(Icons.search),
//             title: Text('Search'),
//           ),
//           ListTile(
//             leading: Icon(Icons.card_membership),
//             title: Text('Get Membership'),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           const Divider(
//             thickness: 1,
//             height: 10,
//             color: Colors.grey,
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           ListTile(
//             leading: Icon(Icons.phone),
//             title: Text('Contact us'),
//           ),
//           ListTile(
//             leading: Icon(Icons.feedback),
//             title: Text('Feedback'),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('About Us'),
//           ),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: Text('Logout'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CircleTabIndicator extends Decoration {
//   final Color color;
//   double radius;

//   CircleTabIndicator({required this.color, required this.radius});

//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _CirclePainter(color: color, radius: radius);
//   }
// }

// class _CirclePainter extends BoxPainter {
//   final double radius;
//   late Color color;
//   _CirclePainter({required this.color, required this.radius});

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     late Paint _paint;
//     _paint = Paint()..color = color;
//     _paint = _paint..isAntiAlias = true;
//     final Offset circleOffset =
//         offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }
