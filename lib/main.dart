import 'package:flutter/material.dart';
import 'package:mobx_live_lesson_preparation/store/water_glass_store.dart';
import 'package:mobx_live_lesson_preparation/view/water_glass_view.dart';
import 'package:provider/provider.dart';

final WaterGlassStore _waterGlassStore = WaterGlassStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<WaterGlassStore>(create: (_) => _waterGlassStore)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WaterGlassView(),
      ),
    );
  }
}
