class Sort {
  final String value;
  final bool descending;

  const Sort({
    required this.value,
    required this.descending,
  });

  // sort clear
  const Sort.clear()
      : value = 'clear',
        descending = false;
}