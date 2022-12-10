import 'package:flutter/material.dart';
import 'package:ideal_body/presenter/value_notifier_body_ideal.dart';

class HomePage extends StatelessWidget {
  final ValueNotifierBodyIdeal presenter;

  HomePage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Corpo Ideal'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Altura (cm)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      presenter.height.value = double.tryParse(value) ?? 0.0;
                      print(value);
                      presenter.meanCalculate();
                    },
                  ),
                ),
                const SizedBox(width: 35),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Peito (cm)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      presenter.chest.value = double.tryParse(value) ?? 0.0;
                      print(value);
                      presenter.meanCalculate();
                    },
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: ValueListenableBuilder(
                    valueListenable: presenter.chestGoal,
                    builder: (context, value, child) =>
                        Text('${value.toStringAsFixed(0)}%'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration:
                        const InputDecoration(labelText: 'Cintura (cm)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      presenter.waist.value = double.tryParse(value) ?? 0.0;
                      print(value);
                      presenter.meanCalculate();
                    },
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: ValueListenableBuilder(
                    valueListenable: presenter.waistGoal,
                    builder: (context, value, child) =>
                        Text('${value.toStringAsFixed(0)}%'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Braço (cm)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      presenter.arm.value = double.tryParse(value) ?? 0.0;
                      print(value);
                      presenter.meanCalculate();
                    },
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: ValueListenableBuilder(
                    valueListenable: presenter.armGoal,
                    builder: (context, value, child) =>
                        Text('${value.toStringAsFixed(0)}%'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Coxa (cm)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      presenter.thigh.value = double.tryParse(value) ?? 0.0;
                      print(value);
                      presenter.meanCalculate();
                    },
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: ValueListenableBuilder(
                    valueListenable: presenter.thighGoal,
                    builder: (context, value, child) =>
                        Text('${value.toStringAsFixed(0)}%'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            ValueListenableBuilder(
              valueListenable: presenter.mean,
              builder: (_, value, __) =>
                  Text("Média ${value.toStringAsFixed(1)}%"),
            ),
          ],
        ),
      ),
    );
  }
}
