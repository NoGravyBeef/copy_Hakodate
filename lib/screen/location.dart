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
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
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
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하치만 궁",
    "latitude": 41.753874703885046,
    "longitude": 140.71007637798263,
    "rating": "4.0",
    "details": "restaurant",
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하코다테 공원",
    "latitude": 41.756262090043414,
    "longitude": 140.71579921216593,
    "rating": "4.0",
    "details": "restaurant",
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
    "description": ["호텔의 상세 설명입니다...", ""], // 상세 설명 추가
    "imageUrls": [
      "asset/img/main1.jpg",
      "asset/img/main2.jpg",
    ], // 이미지 URL 추가
  },
];
