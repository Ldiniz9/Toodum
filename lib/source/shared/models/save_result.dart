final class SaveResult {
  final bool success;
  final String message;

  bool get failed => !success;

  const SaveResult.success(this.message) : success = true;

  const SaveResult.failure(this.message) : success = false;
}
