import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  late double _scrollOffset;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    _scrollController = ScrollController();
    _scrollOffset = 0;
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Text(
              'igClone',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Billabong',
                fontSize: 32,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send_outlined),
              ),
            ],
            floating: true,
            pinned: true,
            snap: true,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.grid_on_outlined)),
                Tab(icon: Icon(Icons.live_tv_outlined)),
                Tab(icon: Icon(Icons.account_circle_outlined)),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 3.0,
              mainAxisSpacing: 3.0,
              children: List.generate(
                  20, (index) => Image.network('https://picsum.photos/200')),
            ),
            Center(
              child: Text('Live'),
            ),
            Center(
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
