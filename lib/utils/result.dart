// utils/result.dart
abstract class Result<T> {
  const Result();

  R when<R>({
    required R Function(T data) success,
    required R Function(int errorCode) error,
  }) {
    final result = this;
    if (result is Success<T>) {
      return success(result.data);
    } else if (result is Error<T>) {
      return error(result.errorCode);
    }
    throw Exception('Unknown result type: $result');
  }

  void whenSuccess(void Function(T data) success) {
    when(
      success: success,
      error: (_) {},
    );
  }

  Result<R> mapTo<R>(R Function(T data) mapper) {
    return when(
      success: (data) => Success(mapper(data)),
      error: (code) => Error(code),
    );
  }
}

class Success<T> extends Result<T> {
  const Success(this.data);
  final T data;
}

class Error<T> extends Result<T> {
  const Error(this.errorCode);
  final int errorCode;
}