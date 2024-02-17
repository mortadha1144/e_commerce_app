import 'dart:developer';

void logger(dynamic message, {String tag = ''}) {
  log("$tag ${message.toString()}", name: tag);
}