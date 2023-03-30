import 'package:flutter/material.dart';
//import 'package:flutter_week6_provider/provider/feature_counter/cara1/counter_page.dart';
import 'package:provider/provider.dart';

import '../provider/counter_manager.dart';
import 'counter_page.dart';

class CounterMain extends StatelessWidget {
  const CounterMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterManager(),
      child: const CounterPage(),
    );
  }
}