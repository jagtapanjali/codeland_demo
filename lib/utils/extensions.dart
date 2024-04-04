
extension StringExtension on String {

  String capitalize() {
    return length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  }
  String titleCase() {
    return replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalize()).join(' ');
  }
}

extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
}