import 'package:dartz/dartz.dart';
import 'package:flutter_triple/flutter_triple.dart';

class CustomEitherAdapter<R, L> implements EitherAdapter<R, L> {
  // receive an usecase in constructor
  final Either<R, L> usecase;
  CustomEitherAdapter(this.usecase);

  // Adapter Future Either(Dartz) to Future EitherAdapter(Triple)
  static Future<EitherAdapter<L, R>> adapter<L, R>(
      Future<Either<L, R>> usecase) {
    return usecase.then((value) => CustomEitherAdapter(value));
  }

  @override
  T fold<T>(T Function(R l) leftF, T Function(L l) rightF) {
    return usecase.fold(leftF, rightF);
  }
}
