import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:group_project/data/data.dart';

class CategoryPage extends StatefulWidget {
  static String id = 'categoryPage';

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Column(
            children: [
              Text(
                'All Categories',
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              leading: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isClicked = !isClicked;
                                  });
                                },
                                child: Icon(
                                  categories[index].icon,
                                ),
                              ),
                              title: Visibility(
                                visible: isClicked,
                                child: Text(
                                  categories[index].name,
                                ),
                              ),
                            ),
                          ),
//                        Expanded(
//                          child: ListView.builder(
//                              itemCount: 1,
//                              itemBuilder: (context, index) {
//                                return ListTile(
//                                  leading: Text('Hello!'),
//                                );
//                              }),
//                        ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        //   bottomNavigationBar: NavBar(),
      ),
    );
  }
}
