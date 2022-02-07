import 'dart:developer' as developer;

class Log {
  Log._();

  static void print(String value) {
    developer.log(value, name: 'LOG');
  }

  static Object? inspect(Object? object) {
    developer.inspect(object);
  }

  static bool? debugger({bool when = true, String? message}) {
    developer.debugger(when: when, message: message);
  }
}
