extension Intersperse<T> on Iterable<T> {
  Iterable<T> intersperse(T separator) sync* {
    var iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield separator;
        yield iterator.current;
      }
    }
  }
}
