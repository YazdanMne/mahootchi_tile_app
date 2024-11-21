import 'package:flutter/material.dart';


class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Image.asset('assets/images/icons/shopping_cart.png',
                    height: 40, width: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset('assets/images/icons/profile_circle.png',
                    height: 40, width: 40),
              ),
            ],
          ),
          Image.asset('assets/images/logo.png'),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset('assets/images/icons/search.png',
                    height: 40, width: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset('assets/images/icons/menu.png',
                    height: 40, width: 40),
              ),
            ],
          )
        ],
      ),
    );
  }
}
