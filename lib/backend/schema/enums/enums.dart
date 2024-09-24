import 'package:collection/collection.dart';

enum Role {
  superAdmin,
  admin,
  user,
}

enum Category {
  beads,
  medicine,
  clothes,
  other,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (Category):
      return Category.values.deserialize(value) as T?;
    default:
      return null;
  }
}
