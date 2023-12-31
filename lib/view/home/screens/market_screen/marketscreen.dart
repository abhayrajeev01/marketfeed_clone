import 'package:flutter/material.dart';
import 'package:marketfeed_clone/globalwidget/topcontainer.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/globalindicespage/globalindices.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/indianindicespage/indianindices.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/leaderboardpage/leaderboard.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/pages/watchlistpage/watchlist.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ColorConst.bgclr,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: ColorConst.appbariconcolor,
              ),
            ),
            centerTitle: true,
            title: ImageConstant.appbarlogo,
            backgroundColor: ColorConst.appbarcolor),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              flexibleSpace: TopContainer(),
              toolbarHeight: 220,
              backgroundColor: ColorConst.bgclr,
              elevation: 0,
              floating: false,
              snap: false,
              pinned: false,
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              floating: true,
              snap: true,
              pinned: true,
              bottom: TabBar(
                isScrollable: true,
                labelColor: ColorConst.labelColor,
                labelStyle: TextStyle(
                  fontSize: 15,
                ),
                unselectedLabelColor: Colors.black,
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(text: 'Watchlist'),
                  Tab(text: 'Indian Indices'),
                  Tab(text: 'Global Indices'),
                  Tab(text: 'Leaderboard'),
                ],
              ),
            )
          ],
          body: SizedBox(
            child: TabBarView(
              children: [
                WatchlistPage(),
                IndianIndicesPage(),
                GlobalIndicesPage(),
                LeaderBoardPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
