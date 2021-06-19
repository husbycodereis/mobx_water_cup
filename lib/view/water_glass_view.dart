import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_live_lesson_preparation/store/water_glass_store.dart';
import 'package:mobx_live_lesson_preparation/view/water_glass_statistics_view.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class WaterGlassView extends StatefulWidget {
  const WaterGlassView({Key? key}) : super(key: key);

  @override
  _WaterGlassViewState createState() => _WaterGlassViewState();
}

class _WaterGlassViewState extends State<WaterGlassView> {
  late WaterGlassStore _waterGlassStore;

  List<ReactionDisposer> _disposers = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _waterGlassStore = Provider.of<WaterGlassStore>(context);

    _disposers.add(
      when(
        (_) => _waterGlassStore.height == 100,
        () => showSnackBar(),
      ),
    );
    _disposers.add(
      when(
        (_) => _waterGlassStore.height > 200,
        () => _waterGlassStore.setIsWaterSpilled(),
      ),
    );
  }

  @override
  void dispose() {
    _disposers.forEach((disposer) => disposer());
    super.dispose();
  }

  void showSnackBar() {
    final snackBar =
        SnackBar(key: scaffoldKey, content: Text('The glass is half full'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Observer(builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  buildContainerWaterCup(),
                  buildPositionedFilledWater(),
                  buildVisibilityWaterSpill()
                ],
              ),
              buildButtons(context)
            ],
          );
        }),
      ),
    );
  }

  Container buildContainerWaterCup() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          border: BorderDirectional(
        start: BorderSide(width: 2),
        bottom: BorderSide(width: 2),
        end: BorderSide(width: 2),
      )),
    );
  }

  Positioned buildPositionedFilledWater() {
    return Positioned(
      bottom: 2,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: _waterGlassStore.filledWaterGlass!.width,
        height: _waterGlassStore.filledWaterGlass!.height,
        color: Colors.blue,
      ),
    );
  }

  Visibility buildVisibilityWaterSpill() {
    return Visibility(
      visible: _waterGlassStore.isWaterSpilledComputed,
      child: Container(
        width: 400,
        height: 10,
        color: Colors.blue,
      ),
    );
  }

  Column buildButtons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: _waterGlassStore.fillWaterGlass,
            child: Text('Fill the cup')),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WaterGlassStatistics()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.green, padding: EdgeInsets.all(20)),
            child: Text('Show Statistics')),
      ],
    );
  }
}
