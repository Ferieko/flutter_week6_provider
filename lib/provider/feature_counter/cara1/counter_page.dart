
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});


  final ValueNotifier<int> _counter = ValueNotifier(0);

  /// Example : Data List
  final ValueNotifier<List<String>> _contacts = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta Counter App Demo Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  '${_counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          _counter.value++;

          /// EXAMPLE LIST :
          _contacts.value.add('Testing');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}