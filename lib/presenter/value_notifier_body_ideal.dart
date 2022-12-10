import 'package:flutter/material.dart';

class ValueNotifierBodyIdeal {
  ValueNotifier<double> mean = ValueNotifier(0);
  ValueNotifier<double> height = ValueNotifier(0);

  void meanCalculate() {
    chestCalculate();
    waistCalculate();
    armCalculate();
    thighCalculate();

    List<double> listValue = [
      chestGoal.value,
      waistGoal.value,
      armGoal.value,
      thighGoal.value,
    ];

    List<double> listFilter =
        listValue.where((element) => element > 0).toList();

    final count = listFilter.length;
    final sum = listFilter.reduce((value, element) => value + element);
    mean.value = sum / count;
    print(mean.value);
  }

  ValueNotifier<double> chest = ValueNotifier(0);
  ValueNotifier<double> chestGoal = ValueNotifier(0);

  void chestCalculate() {
    if (chest.value > 0) {
      chestGoal.value = (chest.value / 112) * 100;
    } else {
      chestGoal.value = 0;
    }
  }

  ValueNotifier<double> waist = ValueNotifier(0);
  ValueNotifier<double> waistGoal = ValueNotifier(0);

  void waistCalculate() {
    if (waist.value > 0) {
      waistGoal.value = (85 / waist.value) * 100;
    } else {
      waistGoal.value = 0;
    }
  }

  ValueNotifier<double> arm = ValueNotifier(0);
  ValueNotifier<double> armGoal = ValueNotifier(0);

  void armCalculate() {
    if (arm.value > 0) {
      armGoal.value = (arm.value / 42.5) * 100;
    } else {
      armGoal.value = 0;
    }
  }

  ValueNotifier<double> thigh = ValueNotifier(0);
  ValueNotifier<double> thighGoal = ValueNotifier(0);

  void thighCalculate() {
    if (thigh.value > 0) {
      thighGoal.value = (thigh.value / 68) * 100;
    } else {
      thighGoal.value = 0;
    }
  }
}
