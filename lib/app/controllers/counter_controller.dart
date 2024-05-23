import '../models/counter_model.dart';

class CounterController {
  final model = CounterModel();

  void incrementCounter() {
    model.counter++;
  }
}
