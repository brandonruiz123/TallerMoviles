import  'dart:async';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';


// class MockRepository extends Mock implements Repository {}

// void unawaited(Future<void>? _) {}

// void main() {
//    group('blocTest', () {
//     group('CounterBloc', () {
//       blocTest<CounterBloc, int>(
//         'supports matchers (contains)',
//         build: () => CounterBloc(),
//         act: (bloc) => bloc.add(CounterEvent.increment),
//         expect: () => contains(1),
//       );
// }