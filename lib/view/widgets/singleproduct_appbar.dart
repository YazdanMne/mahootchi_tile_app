import 'package:flutter/material.dart';



class SingleProductAppBar extends StatelessWidget {
  const SingleProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/icons/shopping_cart.png',
                  height: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/icons/heart.png',
                  height: 40,
                ),
              ],
            ),
            const Text(
              'فروشگاه ماهوتچی',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'shb',
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/icons/close_circle.png',
                  height: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
