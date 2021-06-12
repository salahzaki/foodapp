import 'package:flutter/material.dart';
import 'package:foodapp/Dish.dart';

class DishContainer extends StatelessWidget {
  final int index;
  final int i;

  const DishContainer({Key key, this.index, this.i}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Transform.scale(
            scale: i == index ? 1 : 0.9,
            child: Container(
              height: 150,
              width: 270,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: i == index ? Colors.red : Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommendedDishes[i].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: i == index ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$' + recommendedDishes[i].price.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: i == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: -15,
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.transparent,
            child: Transform.scale(
                scale: i == index ? 1 : 0.9,
                child: Image.asset(recommendedDishes[i].image)),
          ),
        )
      ],
    );
  }
}
