class RadioOption<T> {
  final T value;
  final String title;
  final String? subtitle;

  const RadioOption({
    required this.value,
    required this.title,
    this.subtitle,
  });
}
