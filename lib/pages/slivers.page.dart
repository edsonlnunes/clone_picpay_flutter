import 'dart:math';

import 'package:flutter/material.dart';

/// Page para mostrar a funcionalidade dos Slivers
class SliversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.white,
                  child: FlutterLogo(),
                ),
                title: Text(
                  'Teste',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              floating: true,
              expandedHeight: 200,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => Container(
                  height: 50,
                  color: Colors.primaries[
                      Random.secure().nextInt(Colors.primaries.length)],
                ),
                childCount: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
