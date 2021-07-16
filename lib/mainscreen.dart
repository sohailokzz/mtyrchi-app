import 'package:flutter/material.dart';
import 'package:mytyrch/services/bidding-owner-list-provider.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mytyrch/ui/nav_drawer.dart';
import 'package:mytyrch/pages/bidding_page.dart';
import 'package:mytyrch/pages/gallery_page.dart';
import 'package:mytyrch/pages/home_page.dart';
import 'package:mytyrch/pages/video_page.dart';

import 'ui/custom_animated_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  final _activeColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    Provider.of<BiddingOwnerListProvider>(context, listen: false)
        .fetchBiddingOwners();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      endDrawer: NavDrawer(),
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 60,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 00,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text('Home'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            FontAwesomeIcons.dollarSign,
            color: Colors.white,
          ),
          title: Text('Bidding'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.photo_album,
            color: Colors.white,
          ),
          title: Text(
            'Gallery ',
          ),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            FontAwesomeIcons.youtube,
            color: Colors.white,
          ),
          title: Text('Video'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      BiddingPage(),
      GalleryPage(),
      VideoPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
