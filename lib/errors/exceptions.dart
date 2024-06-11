
import 'package:my_infinity_list_flutter/errors/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}

class DatabaseException implements Exception {}
