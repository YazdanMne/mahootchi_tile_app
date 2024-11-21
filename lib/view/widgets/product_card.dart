import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          width: 190,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned.fill(
          top: 15,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/product_image.png',fit: BoxFit.cover,),
              ),
            ),
          ),
        ),
        const Positioned.fill(
          bottom: 130,
          right: 15,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'اسم محصول',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Positioned.fill(
          bottom: 110,
          right: 15,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'دسته بندی',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Positioned.fill(
          bottom: 70,
          right: 15,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  'تومان',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                Text(
                  textAlign: TextAlign.left,
                  ' 690,000',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                print('yazdan');
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'افزودن',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
