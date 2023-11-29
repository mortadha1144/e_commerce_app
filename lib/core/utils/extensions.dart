
/// convert json to list of objects
extension FromJson on List<dynamic> {
  List<T> itemsFromJson<T>(T Function(Map<String, dynamic>) fromJson) {
    return map((x) => fromJson(x as Map<String, dynamic>)).toList();
  }
}

/// convert list of objects to json
extension ToJson<T> on List<T> {
  Map<String, dynamic> toJson(String key, Function(T) toJson) {
    return {
      key: map((x) => toJson(x)).toList(),
    };
  }
}