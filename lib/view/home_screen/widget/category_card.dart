import 'package:flutter/material.dart';



class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اسم دسته بندی',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'shb'
                ),
              ),
              Row(
                children: [
                  Text(
                    'محصول موجود ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontFamily: 'sh'
                    ),
                  ),
                  Text(
                    '120',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontFamily: 'shfd'
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(width: 20),
          Image.asset('assets/images/icons/tile_icon.png'),
        ],
      ),
    );
  }
}
