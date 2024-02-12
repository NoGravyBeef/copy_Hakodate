import 'package:google_maps_flutter/google_maps_flutter.dart';

final LatLng initialGPS = LatLng(
    //위도와 경도 값 지정
    41.772327685426674,
    140.75285530691409);

final hakodate_location = [
  {
    "name": "Resol Hakodate",
    "latitude": 41.77165845518062,
    "longitude": 140.72765256812278,
    "rating": "4.6",
    "details": "Hotel",
    "avgprice": "￥5000",
    "address": "Wakamatsucho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "하코다테역에서 5분 정도 거리의 금연 객실의 3성급 호텔입니다. 노면전차에서 2분 거리이며, 하코다테 관광시 매우 접근성이 높은 위치에 자리하고 있습니다.",
      "무료 Wi-fi가 있어 인터넷을 이용할 때 문제가 없었으며, 저반발 x 포켓 코일 매트리스가 갖춰져 있어 숙면이 매우 편했다. 또한 조식은 뷔페 형식이며, 맛도 준수하여 만족으로운 아침으로 하루를 시작할 수 있었다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route1_1.jpg",
      "asset/img/route1_2.jpg",
      "asset/img/route1_3.jpg",
      "asset/img/route1_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Suzuya",
    "latitude": 41.77194165474256,
    "longitude": 140.7298017579412,
    "rating": "2.7",
    "details": "Izakaya",
    "avgprice": "￥2500",
    "address": "Matsukazecho, Hakodate, Hokkaido",
    "impression": "Bad",
    "description": [
      "다이몬 요코초 근처에 위치하는 이자카야입니다. 꼬치구이, 야키소바, 가라아게, 오차즈케, 술 등이 주를 이룹니다.",
      "꼬치는 종류별로 양념, 소금구이 둘 중 1택이 가능하다. 허나 양념 꼬치의 맛은 소스와 고기의 맛이 따로 놀며, 상당히 간이 세 짠편이다. 또한 오토오시(자릿세)가 존재하여, 각 메뉴들의 가격은 부담이 없었으나, 인당 500엔의 오토시는 부담이 조금 되었다.",
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route2_1.jpg",
      "asset/img/route2_2.jpg",
      "asset/img/route2_3.jpg",
      "asset/img/route2_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "구 하코다테 공회당",
    "latitude": 41.7650902845601,
    "longitude": 140.70902382792076,
    "rating": "3.4",
    "details": "Historical Monument",
    "avgprice": "￥ 500",
    "address": "Motomachi, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "구 하코다테 공회당 (旧函館区公会堂)은 하코다테에서 1859년에 개설된 공회당입니다. 이곳은 납작돌로 깔린 모토이자카 길 중간에 위치하며, 하코다테가 국제 무역항으로 개방되었던 시기에 설립되었습니다. 현재는 당시의 집무실이 재현되어 있고, 기념관으로도 활용되고 있습니다.",
      "공회당은 뭔가 젊은 사람들이 오기에는 좀 맞지 않는 느낌이였다. 일본 역사가 담긴 건물들이 여럿 있는데 공감하기 어려울 수도 있다고 생각했다. 다행히도 박물관 주변 건물 외관이 정말 예뻤고 눈이 내리면서 사진을 정말 찍기 좋은 장소가 여럿 있었다",
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route3_1.jpg",
      "asset/img/route3_2.jpg",
      "asset/img/route3_3.jpg",
      "asset/img/route3_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "구 영국 영사관",
    "latitude": 41.76594570564132,
    "longitude": 140.7106613122062,
    "rating": "3.4",
    "details": "Museum",
    "avgprice": "￥Free",
    "address": "Motomachi, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "구 영국 영사관은 하코다테에서 1859년에 개설된 영국 영사관입니다. 이곳은 납작돌로 깔린 모토이자카 길 중간에 위치하며, 하코다테가 국제 무역항으로 개방되었던 시기에 설립되었습니다. 현재는 당시의 집무실이 재현되어 있고, 기념관으로도 활용되고 있습니다.",
      "사진을 찍을 수 있는 스폿이 여러 존재해서 추억을 많이 남길 수 있다. 하지만 박물관의 특성상 크게 즐길거리는 없어서, 가볍게 둘러보기 좋았다.",
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route4_1.jpg",
      "asset/img/route4_2.jpg",
      "asset/img/route4_3.jpg",
      "asset/img/route4_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "후나다마 신사",
    "latitude": 41.763415521633675,
    "longitude": 140.71002113139372,
    "rating": "3.0",
    "details": "Shrine",
    "avgprice": "￥Free",
    "address": "Motomachi, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "후나다마 신사는 나가토로 지방에서 봄을 알리는 대표적인 종교행사를 개최하는 곳입니다. 이 신사는 아라 강을 항행하는 뱃사공들이 수상안전을 기원하고 물의 신을 기리는 축제의 기원지로 알려져 있습니다. 강 위에 등롱을 띄우거나 초롱을 단 배가 강을 따라 달립니다. 밤이 되면 건너편 강변에서 불꽃을 쏘아 올려 아름답고 박진감 넘치는 야경을 연출하며 관광객들의 박수를 자아냅니다.",
      "공회당 근처는 둘러보는 중, 우연찮게 들리게된 신사이다. 신사 바로옆에 고등학교가 있어 종소리가 댕 댕 댕 울리는데, 신사의 이미지와 같이 듣고 봤을 때 음산한 느낌이 들었다. 또한 우리가 방문했을 때는 우리 말고는 사람들이 없어 더욱 그렇게 느껴졌던 것 같다.",
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route5_1.jpg",
      "asset/img/route5_2.jpg",
      "asset/img/route5_3.jpg",
      "asset/img/route5_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": '''Gotoken Restaurant''',
    "latitude": 41.763614574771516,
    "longitude": 140.71572581184,
    "rating": "4.2",
    "details": "Restaurant",
    "avgprice": "￥2800",
    "address": "Suehirocho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "고토켄 레스토랑 셋카테이 (Gotoken Restaurant Sekkatei)는 하코다테에서 140년 이상의 전통을 자랑하는 레스토랑입니다. 이 레스토랑은 노포(대대로 물려 내려오는 점포)로서 오랫동안 사랑받아왔으며, 특히 카레는 동서고금, 종류가 다양합니다. 건물은 80년 정도 전에 지어져 국가 문화재로 지정되어 있습니다",
      "카레 집이였지만 돈까스를 시켜먹었는데 다짐육이 아닌 통삼겹처럼 되어있어서 지방 부분을 먹을때 육즙이 느껴지면서 감동이 몰려왔다. 카레는 딱 일본식 레토르트 맛이였다. 가격은 평균 2500엔 이상으로 조금은 부담이 될 수 있었다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route6_1.jpg",
      "asset/img/route6_2.jpg",
      "asset/img/route6_3.jpg",
      "asset/img/route6_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "카네모리 아카렌가 창고",
    "latitude": 41.76647868462087,
    "longitude": 140.71637894224915,
    "rating": "3.1",
    "details": "Shop",
    "avgprice": "￥Free",
    "address": "Suehirocho, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "가네모리 아카렌가 창고는 하코다테에서 1909년에 지어진 붉은 벽돌 창고로, 하코다테시 국제 무역항이었던 모습을 짙게 간직하고 있는 명소입니다. 이 창고는 해안을 따라 늘어서 있으며, 지금도 국제 무역항이었던 모습을 상징하는 경치 중 하나입니다. 가네모리 아카렌가 창고는 현재 4개의 구역으로 나뉜 복합 상업시설로 변화했습니다. 이곳에서는 쇼핑을 즐기는 동시에 카페, 레스토랑, 비어홀에서 휴식을 취할 수 있습니다.",
      "베이지역 상권을 사전 조사할때에는 사람이 별로 없다고 했는데 막상 가보니 관광객들이 엄청 많았고 가게도 다양하게 있었다. 관광객 전용이라서 그런지 확실히 가격이 좀 비싸다는 생각을 했다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route7_1.jpg",
      "asset/img/route7_2.jpg",
      "asset/img/route7_3.jpg",
      "asset/img/route7_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "고료카쿠 타워",
    "latitude": 41.79466375289593,
    "longitude": 140.75401785624734,
    "rating": "4.5",
    "details": "Observatory",
    "avgprice": "￥ 800",
    "address": "Goryokakucho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "고료카쿠 타워는 일본 홋카이도 하코다테시 고료카쿠에 인접한 전망탑입니다. 이 타워는 1964년 처음 완공되었으며, 지금의 모습으로 단장하여 2006년 문을 열었습니다. 높이는 107m입니다. 탑 위 86m와 90m 높이 전망대에서는 북쪽으로 하코다테산, 쓰가루 해협, 요코츠 산맥의 멋진 경치를 조망할 수 있습니다.",
      "로프웨이 전망대는 생각보다 평범했다. 우리가 갔을떄는 눈이 많이와서 그런가 뿌예서 경치가 잘 안보였지만 눈 자체로 예쁜느낌을 냈다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route8_1.jpg",
      "asset/img/route8_2.jpg",
      "asset/img/route8_3.jpg",
      "asset/img/route8_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Asian Bar RAMAI",
    "latitude": 41.793785305264066,
    "longitude": 140.7518413842555,
    "rating": "4.3",
    "details": "Restaurant",
    "avgprice": "￥2000",
    "address": "Goryokakucho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "Asian Bar RAMAI Hakodategoryokakuten은 하코다테에서 맛있는 음식과 특별한 요리를 즐길 수 있는 레스토랑입니다. 이 레스토랑은 Goryokaku Tower를 방문한 후에도 많은 관광객들이 찾는 곳 중 하나입니다. 여기에서는 스프 카레를 맛볼 수 있으며, 라면과 스프를 조합한 이 특별한 요리는 현지의 특산 요리로 꼭 시도해보시길 추천드립니다. 또한, 식사를 할 때 밥의 양과 매운 정도를 선택할 수 있어 많은 사람들이 즐겨 찾는 곳입니다. ",
      "스프 카레집에서 밥양을 대자로 했는데 너무 많이 와서 식고문을 당했다. 내가 시킨것은 다 먹는다는 마인드라 남기지 않고 다먹었다. 맛은 '카레뼈다귀해장국'이라고 하면 맞을 것 같다. 카레를 탕으로 먹으니 되게 색다른 느낌이였다. 가격 대비 양이 혜자다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route9_1.jpg",
      "asset/img/route9_2.jpg",
      "asset/img/route9_3.jpg",
      "asset/img/route9_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하코다테시 열대식물원",
    "latitude": 41.77401617040692,
    "longitude": 140.78950811161872,
    "rating": "3.9",
    "details": "Garden",
    "avgprice": "￥ 300",
    "address": "Yunokawacho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "하코다테시 열대식물원은 유노가와 온천에 위치한 곳으로, 300여 종류의 3,000여 개의 식물이 재배되고 있습니다. 이곳은 겨울 동안 일본 원숭이들이 온천에 들어가는 모습을 볼 수 있는 곳으로 유명합니다. 사루야마 온천은 원숭이들이 느긋하게 휴식을 취하는 온천으로, 온도는 41-42도를 유지합니다. 또한, 원내에는 입장객이 자유롭게 이용할 수 있는 족탕 시설도 있어, 사루야마 온천과 동일한 원천의 온천수로 몸을 덥힐 수 있습니다",
      "원숭이 온천이라 불리우는 열대 식물원에 방문했는데 만화에서 보던 것 마냥 원숭이가 온천에서 탕을 즐기고 있었다. 사람들이 먹이를 막 던져주는데 원숭이들이 똑똑한게 박수도 치고 뱅글뱅글 돌면서 재롱 잔치를 부렸다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route10_1.jpg",
      "asset/img/route10_2.jpg",
      "asset/img/route10_3.jpg",
      "asset/img/route10_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "유노하마 공원",
    "latitude": 41.77598121902695,
    "longitude": 140.786612193412,
    "rating": "3.0",
    "details": "Park",
    "avgprice": "￥Free",
    "address": "Yunokawacho, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "유노카와 온천역에서 도보로 8분 정도의 거리에 있으며, 깨끗한 연못 및 분수, 소나무 등이 있어 경관이 매우 이쁩니다. 지붕이 있는 벤치 아래에는 상자가 놓여있으며, 그곳에 약 5마리의 고양이가 삽니다. 고양이들은 붙임성이 좋아 사람들에게 쉽게 다가가며, 쓰다듬어 달라고하며 사람들의 발길을 이끕니다.",
      "갔는데 눈이 소복히 쌓여서 고양이가 없었다. 그러다 한마리를 우연히 발견해서 가까이 가니까 다가와서 엄청 비볐다 사람 친화적이고 뭔가 삵 같이 생겨서 독특했다. 결국엔 공원 중앙에 박스에 쏙하고 들어가버렸다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route11_1.jpg",
      "asset/img/route11_2.jpg",
      "asset/img/route11_3.jpg",
      "asset/img/route11_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "El Appetti",
    "latitude": 41.774688073943096,
    "longitude": 140.78869478265108,
    "rating": "4.0",
    "details": "Restaurant",
    "avgprice": "￥2800",
    "address": "Yunokawacho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "El Appetti은 하코다테에서 양식을 즐길 수 있는 레스토랑입니다. 이곳은 신선한 해산물 요리부터 동서양의 만남을 음식으로 구현한 퓨전요리까지 다양한 요리를 제공합니다. ",
      "점심때 패밀리 레스토랑을 방문했는데 노부부가 운영하고 계셨으며, 할머니 분은 붙임성이 매우 좋으셨다. 고독한 미식가에 나올 것같은 분위기가 물씬 풍겼다. 스테이크를 시켰는데 맛은 평범한 스테이크맛이였다. 특별한 느낌은 받지 못했다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route12_1.jpg",
      "asset/img/route12_2.jpg",
      "asset/img/route12_3.jpg",
      "asset/img/route12_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "야치가시라 온천",
    "latitude": 41.75173780335132,
    "longitude": 140.71419030069129,
    "rating": "4.0",
    "details": "Onsen",
    "avgprice": "￥ 500",
    "address": "Yachigashiracho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "야치가시라 온천은 야치가시라 역에서 도보로 8분 정도 거리에 자리잡고 있습니다. 고온, 중온, 기포탕이 존재하며, 야외 노천당도 있습니다. 또한 휴게 시설 및 식당이 있어 휴식 및 식사를 할 수도 있습니다.",
      "사실상 목욕탕이라고 해도 될 것 같다. 엄청 규모가 큰 대중목욕탕이였고 특이한 점은 야외 온천도 있어서 신기했다. 오랜만에 탕에 들어가서 몸을 쪘더니 열이올라서 오래 버티지는 못하고 자주 들어가서 최대한 만끽하려고 노력했다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route13_1.jpg",
      "asset/img/route13_2.jpg",
      "asset/img/route13_3.jpg",
      "asset/img/route13_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "럭키 삐에로",
    "latitude": 41.766902697039484,
    "longitude": 140.71594258202703,
    "rating": "3.5",
    "details": "Restaurant",
    "avgprice": "￥1100",
    "address": "Suehirocho, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "럭키 피에로는 하코다테시와 그 근교에서밖에 맛볼 수 없는 로컬 햄버거 가게입니다. 가장 인기가 있는 메뉴는 닭튀김과 양상추를 넣은 ‘차이니즈 치킨 버거’입니다. 또한 엄청난 볼륨을 자랑하는 햄버거도 있습니다.",
      "메인 햄버거는 간장 치킨 햄버거라 생각됐고 같이 딸려오는 우롱차를 먹어봤는데 딱 한약 온천 탕 맛이라고 하면 될 것같다. 교수님이 시키신게 엄청 큰 그릇에 카츠동이 담겨오는데 그건좀 신기했다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route14_1.jpg",
      "asset/img/route14_2.jpg",
      "asset/img/route14_3.jpg",
      "asset/img/route14_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Morning Market",
    "latitude": 41.77211299696916,
    "longitude": 140.724578015536,
    "rating": "3.0",
    "details": "Market",
    "avgprice": "￥Free",
    "address": "Wakamatsucho, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "하코다테 아침시장은 하코다테 역에서 도보로 1분 거리에 있습니다. 연맹 가맹점 약 150개와 기타 100개 점포 등 약 250개 점포에서 홋카이도산 식재료를 판매, 제공하고 있습니다.",
      "사장님들이 붙임성이 좋았다. 우리나라에서는 볼수 없었던 대왕 대개도 보고 눈이 즐거웠다. 또한 카이센동을 파는 식당이 여럿 있었으나, 최근 방류 이슈로 인해 식사는 하지않았다.",
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route15_1.jpg",
      "asset/img/route15_2.jpg",
      "asset/img/route15_3.jpg",
      "asset/img/route15_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "타치마치 곶",
    "latitude": 41.745059068508745,
    "longitude": 140.7211941911241,
    "rating": "5.0",
    "details": "Cape",
    "avgprice": "￥Free",
    "address": "Sumiyoshicho, Hakodate, Hokkaido",
    "impression": "Excellent",
    "description": [
      "하코다테 남쪽 끝에 있는 해안 절벽으로, 잘 정비된 길을 걸으며 넓게 펼쳐진 쓰가루 해협 전망과 함께 산책을 할 수 있는 곳입니다. '요사노 히로시', '미야자키 이쿠우' 등 일본의 유명 문학가의 기념비를 볼 수 있으며, 밤을 밝혀주는 오징어 낚시배와 밤바다가 어우러진 야경도 감상할 수 있습니다.",
      "다치마치곶을 가게되었는데 인간이 만들어낼 수없는 자연의 위대함을 느꼈다. 특히 끝없이 이어진 지평선과 구름 사이사이 일자로 내리는 빛, 티끌 한점 없는 바다를 보면서 놀라움에 연속이였다. 우리가 방문했을 때는 바람이 정말 강하게 오래 불어 매우 재미있었다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route16_1.jpg",
      "asset/img/route16_2.jpg",
      "asset/img/route16_3.jpg",
      "asset/img/route16_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Tonetsu",
    "latitude": 41.761808369654645,
    "longitude": 140.71968109258523,
    "rating": "4.5",
    "details": "Restaurant",
    "avgprice": "￥2500",
    "address": "Horaicho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "호라이초에 위치한 일식 돈까스 집입니다. 새우튀김과 굴튀김이 추가된 세트가 존재하며, 여러 특제 소스가 존재합니다. 호라이초 역에서 도보로 3분 거리에 있어 접근성이 좋습니다.",
      "얇고 바삭한 피에 부드러운 고기에 육즙 가득! 일본 돈까스가 불호 없이 먹을 수있는 좋은 메뉴인 것 같다. 소스중에 색은 돈까스 소스인데 쌈장 맛이 나는 소스가 있어 신기했다. 가격은 비싸지 않아 합리적이었다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route17_1.jpg",
      "asset/img/route17_2.jpg",
      "asset/img/route17_3.jpg",
      "asset/img/route17_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하코다테 하치만궁",
    "latitude": 41.753874703885046,
    "longitude": 140.71007637798263,
    "rating": "3.0",
    "details": "Shrine",
    "avgprice": "￥Free",
    "address": "Yachigashiracho, Hakodate, Hokkaido",
    "impression": "Normal",
    "description": [
      "하코다테 하치만 신사는 홋카이도 하코다테에 위치한 신사입니다. 카미 하치만을 모시는 하치만 신사입니다. 기술적으로는 지방이 없지만 지역의 모든 신을 모시는 소자 신사이기도 합니다. 1445년에 설립되었습니다. 주요 축제는 매년 8월 15일에 열립니다.",
      "입구 앞의 계단이 인상적이며, 애니메이션 속의 신사같았다. 들어가면 약수터가 존재하며, 소원을 적고 걸어놓는 곳이 존재한다. 크게 즐길거리는 없어 빠르게 구경하고, 금방 다른 곳도 구경하러가는 것도 좋을 것 같았다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route18_1.jpg",
      "asset/img/route18_2.jpg",
      "asset/img/route18_3.jpg",
      "asset/img/route18_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "하코다테 공원",
    "latitude": 41.756262090043414,
    "longitude": 140.71579921216593,
    "rating": "4.5",
    "details": "Park",
    "avgprice": "￥Free",
    "address": "Aoyagicho, Hakodate, Hokkaido",
    "impression": "Good",
    "description": [
      "하코다테 공원은 일본 홋카이도 하코다테시에 있는 하코다테산 기슭에 있는 대규모 서양식 공원입니다. 1879년에 개원하여 문화재 보호법에 '명승'으로 등록되어 있습니다. 하코다테시 박물관과 작은 동물원, 어린이 테마파크가 있으며 벚꽃놀이 명소로 인기가 높습니다. ",
      "동물원에서 포니라는 동물을 봤는데 말인지 소인지 돼지인지 알수가 없는 신기한 동물을 볼 수있다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route19_1.jpg",
      "asset/img/route19_2.jpg",
      "asset/img/route19_3.jpg",
      "asset/img/route19_4.jpg",
    ], // 이미지 URL 추가
  },
  {
    "name": "Hakodate Sushi",
    "latitude": 41.77365955672995,
    "longitude": 140.72963359872205,
    "rating": "4.0",
    "details": "Restaurant",
    "avgprice": "￥2500",
    "address": "Hokkaido, Hakodate, Wakamatsucho",
    "impression": "Good",
    "description": [
      "Hakodate Sushi는 일본의 하코다테(函館) 지역에서 유명한 회(초밥) 레스토랑입니다.",
      "저녁으로 겨우 찾아낸 스시집에서 밥을 먹었는데 생각보다 만족했다. 장인분이 엄청 친근하셔서 편하게 식사를 할 수있었다. 특히 생새우 초밥이 기억에 남는데 비린 맛이 하나도 없어서 신기했다. 가격은 한국의 초밥집에 비해 약간 더 비쌌다."
    ], // 상세 설명 추가
    "imageUrls": [
      "asset/img/route20_1.jpg",
      "asset/img/route20_2.jpg",
      "asset/img/route20_3.jpg",
      "asset/img/route20_4.jpg",
    ], // 이미지 URL 추가
  },
];
