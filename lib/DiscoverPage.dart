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
    _tabController = TabController(length: 5, vsync: this, initialIndex: 1);
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
      appBar: AppBar(
        title: Text('igClone'),
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
      ),
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
                Tab(icon: Icon(Icons.account_circle_outlined)),
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
              children: List.generate(
                  10, (index) => Image.network('https://picsum.photos/200')),
            ),
            Center(
              child: Text('Live'),
            ),
            Center(
              child: Text('Reels'),
            ),
            Center(
              child: Text('Shop'),
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
