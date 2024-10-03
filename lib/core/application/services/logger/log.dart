import 'package:logger/logger.dart';

class Log extends LogPrinter {
  final String type;
  final String classMethod;

  Log(this.type, this.classMethod);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.defaultLevelColors[event.level];
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final String message = event.message;
    final now = DateTime.now();
    final formattedDateTime =
        "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}:${now.second}";
    return [
      color!(
          '$emoji $type: $classMethod | Mensagem: $message | $formattedDateTime')
    ];
  }
}

Logger getLogger(String type, String classMethod) {
  return Logger(printer: Log(type, classMethod));
}
