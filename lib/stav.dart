
class Stav {
  static const limit = 12;
  var cislo = "";

  void pridej(String znak) {
    if (jeCoPridat()) {
      cislo = cislo + znak;
    } else {
      throw Exception("nevolej me, zkontroluj nejdriv, ze je co pridat");
    }
  }

  void smaz() {
    if (jeCoSmazat()) {
      cislo = cislo.substring(0, cislo.length - 1);
    } else {
      throw Exception("nevolej me, zkontroluj nejdriv, ze je co smazat");
    }
  }

  bool jeCoSmazat() => cislo.isNotEmpty;

  bool jeCoPridat() => cislo.length < limit;

}

void main() {
  var s = Stav();
  s.pridej("1");
  s.pridej("1");
  s.pridej("1");
  s.pridej("2");
  s.pridej("4");
  s.smaz();
  print(s.cislo);
  s.pridej("3");
  print(s.cislo);
}
