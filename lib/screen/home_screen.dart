// ignore_for_file: unused_element, sized_box_for_whitespace, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  AnimationController? _animationController;
  static final LatLng schoolLatlng = LatLng(
    //위도와 경도 값 지정
    37.540853,
    127.078971,
  );
  static final CameraPosition initialPosition = CameraPosition(
    //지도를 바라보는 카메라 위치
    target: schoolLatlng, //카메라 위치(위도, 경도)
    zoom: 13, //확대 정도
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 10),
    );
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward(); // 애니메이션 자동 시작
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging) {
        _animationController?.reset();
        _animationController?.forward();
      }
    });

    _animationController!.forward();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            children: [
              _Tabbar_part(tabController: _tabController),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            Column(
              children: [
                main_label(animationController: _animationController),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            _pageview_part(
                                animationController: _animationController),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015),
                            _pageview_2_part(
                                animationController: _animationController),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015),
                            _pageview_3_part(
                                animationController: _animationController),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
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
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            //
            //
            //
            //

            //
            //

            //
            //
            //여기서부터 route page
            Column(
              children: [
                main_label(animationController: _animationController),
                google_map_part(
                    initialPosition: initialPosition,
                    animationController: _animationController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
//
//
//
//
//
//
//
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

//
//
//
//
//
//
//
//
class main_label extends StatefulWidget {
  const main_label({Key? key, this.animationController}) : super(key: key);
  final AnimationController? animationController;

  @override
  State<main_label> createState() => main_labelState();
}

class main_labelState extends State<main_label>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animationController!,
      child: Padding(
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
      ),
    );
  }
}

//
//
//
//
//
//
//
//
// ignore: must_be_immutable
class _pageview_part extends StatefulWidget {
  const _pageview_part({Key? key, this.animationController}) : super(key: key);
  final AnimationController? animationController;

  @override
  State<_pageview_part> createState() => _pageview_partState();
}

class _pageview_partState extends State<_pageview_part>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  PageController pageController =
      PageController(initialPage: 1000, viewportFraction: 0.8);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 3500), (Timer timer) {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastOutSlowIn);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 앱이 시작하자마자 바로 페이지 전환 시작
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastOutSlowIn);
      }
      // 그 후, 주기적인 페이지 전환 시작
      startTimer();
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FadeTransition(
      opacity: widget.animationController!,
      child: SizedBox(
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
      ),
    );
  }
}

//
//
//
//
//
//
//
//
//
// ignore: must_be_immutable
class _pageview_2_part extends StatefulWidget {
  const _pageview_2_part({Key? key, this.animationController})
      : super(key: key);
  final AnimationController? animationController;

  @override
  State<_pageview_2_part> createState() => _pageview_2_partState();
}

class _pageview_2_partState extends State<_pageview_2_part> {
  PageController pageController =
      PageController(initialPage: 1003, viewportFraction: 0.5);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 6000), (Timer timer) {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 6000), curve: Curves.linear);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 앱이 시작하자마자 바로 페이지 전환 시작
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 6000), curve: Curves.linear);
      }
      // 그 후, 주기적인 페이지 전환 시작
      startTimer();
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animationController!,
      child: SizedBox(
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
      ),
    );
  }
}

//
//
//
//
//
//
//
//
//
// ignore: must_be_immutable
class _pageview_3_part extends StatefulWidget {
  const _pageview_3_part({Key? key, this.animationController})
      : super(key: key);
  final AnimationController? animationController;

  @override
  State<_pageview_3_part> createState() => _pageview_3_partState();
}

class _pageview_3_partState extends State<_pageview_3_part> {
  PageController pageController =
      PageController(initialPage: 1000, viewportFraction: 0.65);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 8000), (Timer timer) {
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 8000), curve: Curves.linear);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 앱이 시작하자마자 바로 페이지 전환 시작
      if (pageController.hasClients) {
        pageController.nextPage(
            duration: Duration(milliseconds: 8000), curve: Curves.linear);
      }
      // 그 후, 주기적인 페이지 전환 시작
      startTimer();
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animationController!,
      child: SizedBox(
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
      ),
    );
  }
}

//
//
//
//
//
//
//
//
class google_map_part extends StatefulWidget {
  const google_map_part(
      {Key? key, this.animationController, required this.initialPosition})
      : super(key: key);
  final AnimationController? animationController;
  final CameraPosition initialPosition;

  @override
  State<google_map_part> createState() => _google_map_partState();
}

class _google_map_partState extends State<google_map_part>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FadeTransition(
      opacity: widget.animationController!,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: GoogleMap(
              //구글 맵 사용
              mapType: MapType.terrain, //지도 유형 설정
              initialCameraPosition: widget.initialPosition, //지도 초기 위치 설정
            ),
          ),
        ),
      ),
    );
  }
}
