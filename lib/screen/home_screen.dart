// ignore_for_file: unused_element, sized_box_for_whitespace, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: _Tabbar_part(tabController: _tabController),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _main_label(),
              _pageview_part(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              _pageview_2_part(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              _pageview_3_part(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Center(
                child: Column(
                  children: [
                    Text(
                      '© 2024',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Made by HAKODATE TEAM',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            ],
          ),
        ),
      ),
    );
  }
}

class _Tabbar_part extends StatelessWidget {
  const _Tabbar_part({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TabBar(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15),
        labelPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.001),
        controller: _tabController,
        labelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.03,
            fontFamily: 'NanumMyeongjo',
            fontWeight: FontWeight.w300),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white,
        indicator: BoxDecoration(color: Color.fromARGB(255, 16, 16, 16)),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Color.fromARGB(255, 0, 0, 0),
        tabs: [
          Tab(text: 'HOME'),
          Tab(text: 'ROUTE'),
        ],
      ),
    );
  }
}

class _main_label extends StatelessWidget {
  const _main_label({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.037),
      child: Center(
        child: Column(
          children: [
            Text(
              'HAKODATE',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  child: Divider(
                      color: Colors.grey.withOpacity(0.3), thickness: 1.8),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Text(
                  'Travel & Remind',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  child: Divider(
                      color: Colors.grey.withOpacity(0.3), thickness: 1.8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _pageview_part extends StatefulWidget {
  const _pageview_part({
    super.key,
  });

  @override
  State<_pageview_part> createState() => _pageview_partState();
}

class _pageview_partState extends State<_pageview_part> {
  PageController pageController =
      PageController(initialPage: 1000, viewportFraction: 0.8);

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 3500), (Timer timer) {
      pageController.nextPage(
          duration: Duration(milliseconds: 2000), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: PageView.builder(
          controller: pageController,
          allowImplicitScrolling: true,
          itemBuilder: (context, number) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'asset/img/main${number % 4 + 1}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}

// ignore: must_be_immutable
class _pageview_2_part extends StatefulWidget {
  const _pageview_2_part({
    super.key,
  });

  @override
  State<_pageview_2_part> createState() => _pageview_2_partState();
}

class _pageview_2_partState extends State<_pageview_2_part> {
  PageController pageController =
      PageController(initialPage: 1003, viewportFraction: 0.5);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(seconds: 6), curve: Curves.linear);
      }
    });

    Timer.periodic(Duration(seconds: 6), (Timer timer) {
      pageController.nextPage(
          duration: Duration(seconds: 6), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: PageView.builder(
          controller: pageController,
          allowImplicitScrolling: true,
          reverse: true,
          itemBuilder: (context, number) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'asset/img/main_2_${number % 6 + 1}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}

// ignore: must_be_immutable
class _pageview_3_part extends StatefulWidget {
  const _pageview_3_part({
    super.key,
  });

  @override
  State<_pageview_3_part> createState() => _pageview_3_partState();
}

class _pageview_3_partState extends State<_pageview_3_part> {
  PageController pageController =
      PageController(initialPage: 1000, viewportFraction: 0.65);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(seconds: 8), curve: Curves.linear);
      }
    });

    Timer.periodic(Duration(seconds: 8), (Timer timer) {
      pageController.nextPage(
          duration: Duration(seconds: 8), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: PageView.builder(
          controller: pageController,
          allowImplicitScrolling: true,
          itemBuilder: (context, number) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'asset/img/main_2_${number % 6 + 1}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
