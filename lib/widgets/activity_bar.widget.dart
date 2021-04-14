import 'package:flutter/material.dart';

import 'button_tab.widget.dart';

class BasicActivityBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            'Atividades',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Spacer(),
          ButtonTab(
            isSelected: false,
            text: 'Todos',
            color: Colors.green,
          ),
          ButtonTab(
            isSelected: true,
            text: 'Minhas',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class SliverActivityBar extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 55;

  @override
  double get minExtent => 55;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            'Atividades',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Spacer(),
          ButtonTab(
            isSelected: false,
            text: 'Todos',
            color: Colors.green,
          ),
          ButtonTab(
            isSelected: true,
            text: 'Minhas',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
