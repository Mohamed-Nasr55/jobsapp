
import 'package:flutter/material.dart';

class CustomDetailsTabbar extends StatelessWidget {
  const CustomDetailsTabbar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      isScrollable: true,
    
      dividerColor: Colors.transparent,
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.grey,
      tabs: [
        Tab(text: "Describtion"),
        Tab(text: "Recuirments"),
        Tab(text: "About"),
        Tab(text: "Reviews"),
      ],
    );
  }
}
