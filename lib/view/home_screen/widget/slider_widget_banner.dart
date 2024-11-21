import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainSliderAdvertisment extends StatelessWidget {
  MainSliderAdvertisment({
    super.key,
  });

  final sliderController = PageController(
    viewportFraction: 0.8,
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: PageView.builder(
            controller: sliderController,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const BannerSlideWidget();
            },
          ),
        ),
        SmoothPageIndicator(
          controller: sliderController,
          count: 3,
          effect: const ExpandingDotsEffect(
              dotHeight: 7,
              dotWidth: 7,
              activeDotColor: Colors.green,
              dotColor: Colors.greenAccent),
        ),
      ],
    );
  }
}

class BannerSlideWidget extends StatelessWidget {
  const BannerSlideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/3.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
