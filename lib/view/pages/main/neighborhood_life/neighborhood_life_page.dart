import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/view/components/appbar.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/life_body.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/life_header.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => LifeBody(neighborhoodLife: neighborhoodLifeList[index]),
          ),
        ],
      ),
    );
  }
}
