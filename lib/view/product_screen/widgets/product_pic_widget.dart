import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPicWidget extends StatelessWidget {
  ProductPicWidget({
    super.key,
  });

  final sliderController = PageController(
    viewportFraction: 1.0,
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 370,
          height: 370,
          child: PageView.builder(
            controller: sliderController,
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            reverse: true,
            itemBuilder: (context, index) {
              return const PicSingleProduct();
            },
          ),
        ),
        Positioned.fill(
          bottom: 20,
          right: 10,
          child: Align(
            alignment: Alignment.bottomRight,
            child: SmoothPageIndicator(
              controller: sliderController,
              count: 5,
              axisDirection: Axis.vertical,
              effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.green,
                  dotColor: Colors.black26,
                  type: WormType.thin),
            ),
          ),
        ),
      ],
    );
  }
}

class PicSingleProduct extends StatelessWidget {
  const PicSingleProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 370,
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/product_image.png',
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
