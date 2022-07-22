import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShowCase extends StatefulWidget {
  ShowCase({Key? key}) : super(key: key);

  @override
  State<ShowCase> createState() => _ShowCaseState();
}
int activeIndex = 0;
final urlImages = [
  'https://static.scientificamerican.com/sciam/cache/file/9CAE9C60-8BC5-4CA3-95C180EFACDD99FD_source.jpg?w=590&h=800&5DC00F08-F74F-402B-811CEE0D33E933CB',
  'https://cdn.britannica.com/22/206222-050-3F741817/Domestic-feline-tabby-cat.jpg?q=60'
];
class _ShowCaseState extends State<ShowCase> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return SizedBox(
              height: size.height * 0.34,
              child: Stack(children: [
                CarouselSlider.builder(
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    },
                    options: CarouselOptions(
                        height: size.height * 0.3,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) {
                          setState(() => activeIndex = index);
                        })),
                Positioned(
                    bottom: 0,
                    right: 165,
                    child: SizedBox(
                        height: size.height * 0.05, child: buildIndicator())),
                Positioned(right: 5,top: 5,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outlined,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ]),
            );
  }
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: ExpandingDotsEffect(),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      width: double.infinity,
      //  margin: EdgeInsets.symmetric(horizontal: 24),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}