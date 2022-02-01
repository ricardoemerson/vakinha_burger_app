class RestClientException implements Exception {
  final int? code;
  final String message;

  RestClientException({
    this.code,
    required this.message,
  });

  @override
  String toString() => 'RestClientException(code: $code, message: $message)';
}
