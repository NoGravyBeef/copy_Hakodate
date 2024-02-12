// ignore_for_file: unused_element, sized_box_for_whitespace, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:copy_hakodate/screen/location.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

@pragma('vm:entry-point')
class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  AnimationController? _animationController;
  static final CameraPosition initialPosition = CameraPosition(
    //지도를 바라보는 카메라 위치
    target: initialGPS, //카메라 위치(위도, 경도)
    zoom: 12, //확대 정도
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
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            main_label(
                                animationController: _animationController),
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
            SlidingUpPanel(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              minHeight: 60,
              maxHeight: MediaQuery.of(context).size.height * 0.65 + 180,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              backdropEnabled: true,
              backdropOpacity: 0.3,
              parallaxEnabled: true,
              parallaxOffset: .4,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 42, 42, 42).withOpacity(0.5),
                  blurRadius: 10,
                )
              ],
              header: dragHandle(),
              panel: SingleChildScrollView(
                child: Column(
                  children: [sliding_up_panel_part()],
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    main_label(animationController: _animationController),
                    google_map_part(
                      animationController:
                          _animationController, // 여기서 _animationController는 HomeScreen 상태에 정의된 AnimationController 인스턴스입니다.
                      initialPosition: initialPosition,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@pragma('vm:entry-point')
class sliding_up_panel_part extends StatelessWidget {
  const sliding_up_panel_part({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3.0,
                          offset: Offset(0, 5)),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width - 16,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Image.asset(
                    'asset/img/main2.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 16,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.black.withOpacity(0.8),
                  ],
                  stops: [0, 0.7],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.cloudy_snowing,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hakodate',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Winter 1.20 - 1.24 days',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'DancingScript',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                '밤이 내려앉을 때 비로소 빛나기 시작하는 도시.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''일본 홋카이도 남부에 위치한 항구 도시로, 환상적인 야경, 역사적 건축물, 신선한 해산물로 유명하다. 하코다테는 야경이 아름다운 홋카이도의 보석 같은 도시다.''',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Copy_Hakodate',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

@pragma('vm:entry-point')
class dragHandle extends StatelessWidget {
  const dragHandle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter, // 이 줄은 Container 자체의 정렬을 지정합니다.
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          width: 80,
          height: 5.5,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 87, 87, 87),
            borderRadius: BorderRadius.circular(12), // 헤더의 모서리를 둥글게 합니다.
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
            horizontal: MediaQuery.of(context).size.width * 0.1),
        labelPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.0045),
        controller: _tabController,
        labelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.032,
            fontFamily: 'NanumMyeongjo',
            fontWeight: FontWeight.w700),
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
            vertical: MediaQuery.of(context).size.height * 0.034),
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
                    'asset/img/main${number % 9 + 1}.jpg',
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
                    'asset/img/main_3_${number % 6 + 1}.jpg',
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
class LocationDetail {
  final String name;
  final String rating;
  final String details;
  final String avgprice;
  final String address;
  final String impression;
  final List<String> descriptions; // 변경: List<String> 타입으로
  final List<String> imageUrls;

  LocationDetail({
    required this.name,
    required this.rating,
    required this.details,
    required this.avgprice,
    required this.address,
    required this.impression,
    required this.descriptions,
    required this.imageUrls,
  });
}

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
  //
  final List<LocationDetail> locationDetails =
      hakodate_location.map((location) {
    final String name = location['name'] as String;
    final String rating = location['rating'] as String;
    final String details = location['details'] as String;
    final String avgPrice = location['avgprice'] as String;
    final String address = location['address'] as String;
    final String impression = location['impression'] as String;
    final List<String> descriptions =
        (location['description'] as List).cast<String>();
    final List<String> imageUrls =
        (location['imageUrls'] as List).cast<String>();

    return LocationDetail(
        name: name,
        rating: rating,
        details: details,
        avgprice: avgPrice,
        address: address,
        impression: impression,
        descriptions: descriptions,
        imageUrls: imageUrls);
  }).toList();

  @override
  bool get wantKeepAlive => true;
  GoogleMapController? _mapController;
  final _markers = <Marker>{};

  @override
  void initState() {
    _markers.addAll(
      hakodate_location.map(
        (e) => Marker(
          markerId: MarkerId(e['name'] as String),
          position: LatLng(
            e['latitude'] as double,
            e['longitude'] as double,
          ),
        ),
      ),
    );
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _mapController!.setMapStyle(_mapStyle);

    setState(() {
      _markers.clear();
      for (final location in hakodate_location) {
        final name = location['name'] as String; // String으로 명시적 캐스팅
        final rating = location['rating'] as String;
        final details = location['details'] as String;
        final avgPrice = location['avgprice'] as String;
        final address = location['address'] as String;
        final impression = location['impression'] as String;
        final latitude = location['latitude'] as double; // double로 명시적 캐스팅
        final longitude = location['longitude'] as double; // double로 명시적 캐스팅

        final marker = Marker(
          markerId: MarkerId(name),
          position: LatLng(latitude, longitude),
          // infoWindow: InfoWindow(title: name),
          onTap: () {
            // 마커 탭 시 상세 정보 다이얼로그를 표시하는 로직
            final locationDetail = locationDetails.firstWhere(
                (detail) => detail.name == name,
                orElse: () => LocationDetail(
                    name: name,
                    rating: rating,
                    details: details,
                    avgprice: avgPrice,
                    address: address,
                    impression: impression,
                    descriptions: [],
                    imageUrls: []));
            showLocationDetailDialog(context, locationDetail);
          },
        );
        _markers.add(marker);
      }
    });
  }

  void showLocationDetailDialog(BuildContext context, LocationDetail detail) {
    PageController pageController = PageController(initialPage: 0);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(20),
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.43,
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: detail.imageUrls.length,
                              itemBuilder: (context, index) => Image.asset(
                                  detail.imageUrls[index],
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: SmoothPageIndicator(
                              controller: pageController,
                              count: 4,
                              effect: WormEffect(
                                dotColor: Colors.white,
                                activeDotColor: Color.fromARGB(255, 74, 74, 74),
                                type: WormType.thin,
                                radius: 16,
                                spacing: 10,
                                dotHeight: 7,
                                dotWidth: 7,
                              )),
                        ),
                      ),
                    ],
                  ),
                  // 필요한 경우 여기에 더 많은 위젯 추가
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              detail.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 45, 44, 51),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(66, 23)),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    detail.rating,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        height: 0.5),
                                  ),
                                  SizedBox(width: 4),
                                  Transform.translate(
                                    offset: Offset(0, -0.5),
                                    child: Icon(Icons.star_rounded,
                                        color: Colors.white, size: 19),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.fmd_good_sharp,
                                color: Colors.black.withOpacity(0.65),
                                size: 13),
                            SizedBox(width: 5),
                            Text(
                              detail.address,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontSize: 11,
                                  height: 0.5),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            SizedBox(width: 2),
                            Icon(Icons.circle,
                                color: Color.fromARGB(255, 205, 65, 65),
                                size: 9),
                            SizedBox(width: 5),
                            Text(
                              'Details',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 24),
                            Text(
                              detail.details,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          detail.descriptions[0],
                          style: TextStyle(
                              height: 1.7,
                              color: Colors.black.withOpacity(0.65),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 2),
                            Icon(Icons.circle,
                                color: Color.fromARGB(255, 205, 65, 65),
                                size: 9),
                            SizedBox(width: 5),
                            Text(
                              'Impression',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 24),
                            Text(
                              detail.impression,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          detail.descriptions[1],
                          style: TextStyle(
                              height: 1.7,
                              color: Colors.black.withOpacity(0.65),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 1),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  detail.avgprice,
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '/Per person',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.65),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.47,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor:
                                      Color.fromARGB(255, 45, 44, 51),
                                  foregroundColor: Colors.white,
                                  textStyle: TextStyle(),
                                ),
                                child: Text('Close'),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.6), width: 2)),
            child: FadeTransition(
              opacity: widget.animationController!,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: GoogleMap(
                      //구글 맵 사용
                      markers: _markers,
                      onMapCreated: _onMapCreated,
                      gestureRecognizers: <Factory<
                          OneSequenceGestureRecognizer>>{
                        Factory<OneSequenceGestureRecognizer>(
                            () => EagerGestureRecognizer())
                      },
                      initialCameraPosition:
                          widget.initialPosition, //지도 초기 위치 설정
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

var paneltext = '''

''';

String _mapStyle = '''
  [
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]
  ''';
