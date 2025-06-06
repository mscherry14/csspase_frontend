import "package:uuid/uuid.dart";

import "../domain/idempotency_key_generator.dart";

class UuidKeyGenerator implements IdempotencyKeyGenerator {
  final _uuid = Uuid();

  @override
  String generate() => _uuid.v4();
}
