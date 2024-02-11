import 'package:google_maps_flutter/google_maps_flutter.dart';

final LatLng initialGPS = LatLng(
    //위도와 경도 값 지정
    41.772327685426674,
    140.75285530691409);

final hakodate_location = [
  {
    "name": "Resol Hotel Hakodate",
    "latitude": 41.77165845518062,
    "longitude": 140.72765256812278,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "Bad or Soso or Good or Excellent",
    "description": [
      "장소의 특성을 살려 설명을 적어주세요",
      "그 장소의 장단점 or 느낀점 or 기억나는 부분 기재해주세요"
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "suzuya",
    "latitude": 41.77194165474256,
    "longitude": 140.7298017579412,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "공회당",
    "latitude": 41.7650902845601,
    "longitude": 140.70902382792076,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "구 영국 영사관",
    "latitude": 41.76594570564132,
    "longitude": 140.7106613122062,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "신사1",
    "latitude": 41.763415521633675,
    "longitude": 140.71002113139372,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "gotoken 카레집",
    "latitude": 41.763614574771516,
    "longitude": 140.71572581184,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "아카렌가 창고",
    "latitude": 41.76647868462087,
    "longitude": 140.71637894224915,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "고료카쿠 타워",
    "latitude": 41.79466375289593,
    "longitude": 140.75401785624734,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "asian bar ramai",
    "latitude": 41.793785305264066,
    "longitude": 140.7518413842555,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "열대 식물원",
    "latitude": 41.77401617040692,
    "longitude": 140.78950811161872,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "유노하마 공원",
    "latitude": 41.77598121902695,
    "longitude": 140.786612193412,
    "rating": "4.1",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "el appetti",
    "latitude": 41.774688073943096,
    "longitude": 140.78869478265108,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "야치가시라 온천",
    "latitude": 41.75173780335132,
    "longitude": 140.71419030069129,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "럭키 삐에로",
    "latitude": 41.766902697039484,
    "longitude": 140.71594258202703,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "아침 시장",
    "latitude": 41.77211299696916,
    "longitude": 140.724578015536,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "다치마치 곶",
    "latitude": 41.745059068508745,
    "longitude": 140.7211941911241,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "tonetsu",
    "latitude": 41.761808369654645,
    "longitude": 140.71968109258523,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Hachimangū",
    "latitude": 41.753874703885046,
    "longitude": 140.71007637798263,
    "rating": "5.0",
    "details": "Restaurant",
    "avgprice": "￥1000",
    "address": "Yachigashiracho, Hakodate, Hokkaido",
    "impression": "Soso",
    "description": [
      "하코다테산의 나무숲으로 둘러싸인 조용하면서 확 트인 곳에 자리잡은 신사. 약 100년 전에 지어진 본전은 격식을 갖춘 구조로, 특히 지붕이 훌륭합니다.",
      "입구 앞의 계단이 인상적이며, 애니메이션 속의 신사같았다. 들어가면 약수터가 존재하며, 소원을 적고 걸어놓는 곳이 존재한다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main2.jpg",
      "asset/img/main1.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하코다테 공원",
    "latitude": 41.756262090043414,
    "longitude": 140.71579921216593,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "저녁 스시집",
    "latitude": 41.77365955672995,
    "longitude": 140.72963359872205,
    "rating": "4.0",
    "details": "restaurant",
    "avgprice": "￥1000",
    "address": "",
    "impression": "",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
];
