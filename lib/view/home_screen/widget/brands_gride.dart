import "package:flutter/material.dart";

class GrideBrands extends StatelessWidget {
  const GrideBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, index) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/item$index.png',
                    height: 100,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 17,
      ),
    );
  }
}
