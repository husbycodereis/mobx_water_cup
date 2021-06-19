import 'package:mobx/mobx.dart';
import 'package:mobx_live_lesson_preparation/model/water_glass_model.dart';
part 'water_glass_store.g.dart';

class WaterGlassStore = _WaterGlassStoreBase with _$WaterGlassStore;

abstract class _WaterGlassStoreBase with Store {
  @observable
  WaterGlassModel waterGlass =
      WaterGlassModel(width: 196, height: 10, weight: 0);

  @observable
  double height = 10;

  @observable
  bool isWaterSpilled = false;

  @action
  setIsWaterSpilled() {
    isWaterSpilled = true;
  }

  @action
  void fillWaterGlass() {
    height += 10;
  }

  @computed
  WaterGlassModel? get filledWaterGlass {
    if (height <= 200) {
      return WaterGlassModel(width: 196, height: height, weight: 25 + height);
    } else {
      return WaterGlassModel(width: 196, height: 200, weight: 25 + 200);
    }
  }

  @computed
  bool get isWaterSpilledComputed => height > 200 ? true : false;
}
