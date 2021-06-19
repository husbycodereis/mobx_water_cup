// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_glass_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WaterGlassStore on _WaterGlassStoreBase, Store {
  Computed<WaterGlassModel?>? _$filledWaterGlassComputed;

  @override
  WaterGlassModel? get filledWaterGlass => (_$filledWaterGlassComputed ??=
          Computed<WaterGlassModel?>(() => super.filledWaterGlass,
              name: '_WaterGlassStoreBase.filledWaterGlass'))
      .value;
  Computed<bool>? _$isWaterSpilledComputedComputed;

  @override
  bool get isWaterSpilledComputed => (_$isWaterSpilledComputedComputed ??=
          Computed<bool>(() => super.isWaterSpilledComputed,
              name: '_WaterGlassStoreBase.isWaterSpilledComputed'))
      .value;

  final _$waterGlassAtom = Atom(name: '_WaterGlassStoreBase.waterGlass');

  @override
  WaterGlassModel get waterGlass {
    _$waterGlassAtom.reportRead();
    return super.waterGlass;
  }

  @override
  set waterGlass(WaterGlassModel value) {
    _$waterGlassAtom.reportWrite(value, super.waterGlass, () {
      super.waterGlass = value;
    });
  }

  final _$heightAtom = Atom(name: '_WaterGlassStoreBase.height');

  @override
  double get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  final _$isWaterSpilledAtom =
      Atom(name: '_WaterGlassStoreBase.isWaterSpilled');

  @override
  bool get isWaterSpilled {
    _$isWaterSpilledAtom.reportRead();
    return super.isWaterSpilled;
  }

  @override
  set isWaterSpilled(bool value) {
    _$isWaterSpilledAtom.reportWrite(value, super.isWaterSpilled, () {
      super.isWaterSpilled = value;
    });
  }

  final _$_WaterGlassStoreBaseActionController =
      ActionController(name: '_WaterGlassStoreBase');

  @override
  dynamic setIsWaterSpilled() {
    final _$actionInfo = _$_WaterGlassStoreBaseActionController.startAction(
        name: '_WaterGlassStoreBase.setIsWaterSpilled');
    try {
      return super.setIsWaterSpilled();
    } finally {
      _$_WaterGlassStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fillWaterGlass() {
    final _$actionInfo = _$_WaterGlassStoreBaseActionController.startAction(
        name: '_WaterGlassStoreBase.fillWaterGlass');
    try {
      return super.fillWaterGlass();
    } finally {
      _$_WaterGlassStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
waterGlass: ${waterGlass},
height: ${height},
isWaterSpilled: ${isWaterSpilled},
filledWaterGlass: ${filledWaterGlass},
isWaterSpilledComputed: ${isWaterSpilledComputed}
    ''';
  }
}
