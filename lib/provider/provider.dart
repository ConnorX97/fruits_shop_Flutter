import 'package:flutter/material.dart';

final class FruitProvider extends ChangeNotifier {
  int currentIndex = 0;
  List fruitData = [
    {
      "name": "나는야 무화과",
      "imageName": "fig",
      "price": 3100,
      "description": "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!",
      "isFavorite": false
    },
    {
      "name": "유기농 아보카도",
      "imageName": "avocado",
      "price": 2900,
      "description": "미네랄도 풍부하고, 요리 장식과 소스로도 좋은 아보카도입니다",
      "isFavorite": false
    },
    {
      "name": "바나나 안 바나나",
      "imageName": "banana",
      "price": 2400,
      "description": "달콤한 맛의 바나나. 이렇게 맛있으니 내가 바나나 안 바나나?",
      "isFavorite": true
    },
    {
      "name": "아임 파인애플",
      "imageName": "pineapple",
      "price": 3000,
      "description": "소화와 피로회복, 비타민까지! 파인애플로 맛과 영양까지 한번에 챙기세요",
      "isFavorite": true
    },
    {
      "name": "시원한 수박",
      "imageName": "watermelon",
      "price": 3500,
      "description": "아이들이 너무나 좋아하는 시원하고 달콤한 하우스 수박이에요",
      "isFavorite": true
    },
    {
      "name": "베리베리 블루베리",
      "imageName": "blueberry",
      "price": 2300,
      "description": "타임지 선정 10대 파워 푸드. 신이 내린 선물이라 불리는 블루베리에요.",
      "isFavorite": false
    },
    {
      "name": "오예! 스트로베리",
      "imageName": "strawberry",
      "price": 3300,
      "description": "비타민 C가 한 가득! 입맛을 돋우는 유기농 딸기에요!",
      "isFavorite": false
    },
    {
      "name": "백설공주 사과",
      "imageName": "apple",
      "price": 2100,
      "description": "달콤한 맛이 좋은 과일의 여왕 사과. 독은 없고 꿀만 가득해요!",
      "isFavorite": true
    },
    {
      "name": "스위트 체리",
      "imageName": "cherry",
      "price": 2700,
      "description": "과일계의 다이아몬드라 불리우는 상콤달콤한 체리!",
      "isFavorite": false
    },
    {
      "name": "새콤달콤 레몬",
      "imageName": "lemon",
      "price": 2500,
      "description": "신선하고 새콤한 맛으로 입맛을 사로잡는 비타민 가득한 레몬입니다",
      "isFavorite": false
    },
    {
      "name": "꿀피부 석류",
      "imageName": "pomegranate",
      "price": 2500,
      "description": "미녀는 석류를 좋아해. 자꾸 자꾸 예뻐지면 나는 어떡해",
      "isFavorite": false
    },
    {
      "name": "몰디브 라임",
      "imageName": "lime",
      "price": 3900,
      "description": "모히또 가서 몰디브 한잔? 시큼한 맛이 매력적인 라임",
      "isFavorite": false
    },
    {
      "name": "토마 토마토",
      "imageName": "tomato",
      "price": 2600,
      "description": "한 입 베어물면 싱그러운 향이 한 가득! 만능 건강 식품 토마토입니다",
      "isFavorite": false
    },
  ];
}
