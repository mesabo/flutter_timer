///Le ticker sera notre source de données pour l'application de minuterie.
/// Il exposera un flux de tiques auquel nous pouvons nous abonner et réagir.
/// Tout ce que notre classe Ticker fait est d'exposer une fonction tick qui
/// prend le nombre de ticks (secondes) que nous voulons et retourne un
/// flux qui émet les secondes restantes chaque seconde.

class Ticker {
  // nous passons ici des paramètres facultatifs
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
