import 'package:flutter/material.dart';
import 'package:mobx_live_lesson_preparation/store/water_glass_store.dart';
import 'package:provider/provider.dart';

class WaterGlassStatistics extends StatefulWidget {
  const WaterGlassStatistics({Key? key}) : super(key: key);

  @override
  _WaterGlassStatisticsState createState() => _WaterGlassStatisticsState();
}

class _WaterGlassStatisticsState extends State<WaterGlassStatistics> {
  late WaterGlassStore _waterGlassStore;

  @override
  void didChangeDependencies() {
    _waterGlassStore = Provider.of<WaterGlassStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
                'Total height of the glass = ${_waterGlassStore.filledWaterGlass!.height}'),
            Text(
                'Total weight of the glass = ${_waterGlassStore.filledWaterGlass!.weight}'),
          ],
        ),
      ),
    );
  }
}
