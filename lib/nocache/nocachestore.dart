import 'package:ferry/ferry.dart';

class NoStore extends Store {
  @override
  void clear() {}

  @override
  void delete(String dataId) {}

  @override
  void deleteAll(Iterable<String> dataIds) {}

  @override
  Map<String, dynamic>? get(String dataId) => null;

  @override
  Iterable<String> get keys => [];

  @override
  void put(String dataId, Map<String, dynamic>? value) {}

  @override
  void putAll(Map<String, Map<String, dynamic>?> data) {}

  @override
  Stream<Map<String, dynamic>?> watch(String dataId, {bool distinct = true}) =>
      const Stream.empty();
}
