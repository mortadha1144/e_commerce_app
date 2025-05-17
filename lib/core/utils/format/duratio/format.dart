extension DurationFormat on Duration {
  /// formate the duration to a string in the format `mm:ss`.
  /// For example, `Duration(minutes: 2, seconds: 30).format` will return `02:30`.
  String get format {
    final minutes = inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  int get seconds => inSeconds.remainder(60);

  int get minutes => inMinutes.remainder(60);
}