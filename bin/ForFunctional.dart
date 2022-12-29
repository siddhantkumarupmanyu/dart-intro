String scream(int length) => "A${'a' * length}h!";

// void main(){
main() {
  final values = [1, 2, 3, 4, 5, 6];
  for (final length in values) {
    print(scream(length));
  }
  values
      .map(scream)
      .forEach(print);
  
  values
      .skip(1)
      .take(3)
      .map(scream)
      .forEach(print);
}
