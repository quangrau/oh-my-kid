import 'package:flutter/material.dart';
import 'package:oh_my_kids/src/screens/home/hone_menu_item.dart';
import 'package:oh_my_kids/src/utils/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
    this.items = const [
      HomeMenuItem('Alphabet', '/alphabet'),
      HomeMenuItem('Numbers', 'numbers'),
      HomeMenuItem('Shapes', '/shapes'),
      HomeMenuItem('Animals', 'animals'),
      HomeMenuItem('Story Books', 'stories'),
      HomeMenuItem('Math', 'math'),
    ],
  }) : super(key: key);

  static const routeName = '/';

  final List<HomeMenuItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFantasyColor,
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext ctx, int index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  // Function is executed on tap.
                  Navigator.restorablePushNamed(
                    context,
                    item.routeName,
                  );
                },
                child: Container(
                  height: 140,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  child: Text(item.name),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: kMaltaColor.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
