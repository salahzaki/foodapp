import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Dish.dart';
import 'package:foodapp/Widgets/DishContainer.dart';
import 'package:foodapp/Widgets/FavouriteContainer.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Welcome\nto Yam Yam 🍜',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/pp.jpg'),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Mmmmmm, I would love to search for...',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 30,
                    )),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 320,
              child: PageView.builder(
                  itemCount: recommendedDishes.length,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (context, i) {
                    return DishContainer(
                      index: _index,
                      i: i,
                    );
                  }),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: DefaultTabController(
                length: 6,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.blue[700],
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicator: MD2Indicator(
                    indicatorHeight: 5,
                    indicatorColor: Colors.blue[700],
                    indicatorSize: MD2IndicatorSize.tiny,
                  ),
                  tabs: [
                    Tab(
                      text: 'Your Favs',
                    ),
                    Tab(
                      text: "Soup",
                    ),
                    Tab(
                      text: "Noodles",
                    ),
                    Tab(
                      text: "Combo Meal",
                    ),
                    Tab(
                      text: "Salads",
                    ),
                    Tab(
                      text: "Breakfast",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 90,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: favouriteDishes.length,
                  itemBuilder: (context, index) {
                    return FavouriteContainer(
                      index: index,
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: DotNavigationBar(
          selectedItemColor: Colors.red,
          margin: EdgeInsets.symmetric(horizontal: 30),
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            DotNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.fastfood,
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
