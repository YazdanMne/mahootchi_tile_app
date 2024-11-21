import 'package:flutter/material.dart';
import 'package:mahootchi_shop/view/home_screen/widget/brands_gride.dart';
import 'package:mahootchi_shop/view/home_screen/widget/category_card.dart';
import 'package:mahootchi_shop/view/widgets/main_app_bar.dart';
import 'package:mahootchi_shop/view/home_screen/widget/slider_widget_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const MainAppBar(),
            const SizedBox(height: 20),
            MainSliderAdvertisment(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(right: 24,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'دسته بندی',
                    style: TextStyle(
                        color: Colors.black, fontSize: 17, fontFamily: 'shb'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 85,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 24),
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                reverse: true,
                itemBuilder: (BuildContext context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: CategoryCard(),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(right: 24,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'برند های ما',
                    style: TextStyle(
                        color: Colors.black, fontSize: 17, fontFamily: 'shb'),
                  ),
                ],
              ),
            ),
            const Expanded(child: GrideBrands()),
          ],
        ),
      ),
    );
  }
}
