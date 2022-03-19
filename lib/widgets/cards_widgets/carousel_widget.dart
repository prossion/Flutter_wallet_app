import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://upload.wikimedia.org/wikipedia/commons/5/5d/Monobank-card.png',
  'https://upload.wikimedia.org/wikipedia/commons/5/5d/Monobank-card.png',
  'https://upload.wikimedia.org/wikipedia/commons/5/5d/Monobank-card.png',
];

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        autoPlay: true,
      ),
      items: imgList
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
