import 'package:flutter/material.dart';
import 'package:mahootchi_shop/view/product_screen/widgets/product_pic_widget.dart';
import 'package:mahootchi_shop/view/widgets/line_widget.dart';
import 'package:mahootchi_shop/view/widgets/singleproduct_appbar.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SingleProductAppBar(),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'خانه \\ کاشی و سرامیک \\ 80*80 \\ سرامیک پرسلان الوند طرح کابن',
                      style: TextStyle(color: Colors.black, fontFamily: 'sh'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LineWidget(
                  color: Colors.green,
                  width: double.infinity,
                ),
              ),
              ProductPicWidget(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Text(
                  textAlign: TextAlign.right,
                  'سرامیک پرسلان الوند طرح کابن طلایی پولیش 80*80',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'shb',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/item2.png',
                      height: 35,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تومان ',
                    style: TextStyle(
                      fontFamily: 'shfd',
                      fontSize: 28,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    '630,000',
                    style: TextStyle(
                      fontFamily: 'shfd',
                      fontSize: 28,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 29),
              InkWell(
                onTap: (){print('Hello');},
                child: Container(
                  height: 60,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightGreen,
                  ),
                  child: const Center(
                    child: Text('جزئیات محصول و خرید',style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'shb',
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
