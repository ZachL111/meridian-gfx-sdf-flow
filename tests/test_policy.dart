import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(80, 103, 17, 20, 9);
  assert(Policy.score(signalcase_1) == 167);
  assert(Policy.classify(signalcase_1) == 'accept');
  const signalcase_2 = Signal(94, 99, 11, 13, 5);
  assert(Policy.score(signalcase_2) == 223);
  assert(Policy.classify(signalcase_2) == 'accept');
  const signalcase_3 = Signal(68, 100, 27, 20, 5);
  assert(Policy.score(signalcase_3) == 112);
  assert(Policy.classify(signalcase_3) == 'review');
}
