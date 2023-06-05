import 'package:flutter/material.dart';
import 'package:transport/screens/rating/widget/rating_tab.dart';


class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating'),
      ),
      body: SafeArea(
          child: DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Top'),
                      Tab(text: 'Lowest'),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(
                        children: [
                          RatingTabScreen(),
                          RatingTabScreen(),
                          RatingTabScreen(),
                        ],
                      )
                  )
                ],
              )
          )
      ),
    );
  }
}
