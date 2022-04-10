class Success {
  final int code;
  final Object successResponse;

  Success({this.code, this.successResponse});
}

class Error {
  final int code;
  final Object errorResponse;

  Error({this.code, this.errorResponse});
}

class UserError {
  final int code;
  final Object userErrorResponse;

  UserError({this.code, this.userErrorResponse});
}
