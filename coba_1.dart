void main() {
  Map<String, int> aritmatika(int a, int b) {
    return {
      'Penjumlahan': a + b,
      'Pengurangan': a - b,
      'Perkalian': a * b,
      'Pembagian': a ~/ b,
      'Modulus': a % b
    };
  }

  var listAngka = [1, 2, 3, 4, 5];
  listAngka.add(6);

  var setAngka = Set.from(listAngka);
  setAngka.add(7);

  var mapAngka = {
    'satu': 1,
    'dua': 2,
    'tiga': 3
  };

  final symbolUnik = Symbol('unik');

  String cekGanjilGenap(int angka) {
    if (angka % 2 == 0) {
      return 'Genap';
    } else {
      return 'Ganjil';
    }
  }

  int faktorial(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * faktorial(n - 1);
    }
  }

  Function counter() {
    int hitung = 0;
    return () {
      hitung++;
      return hitung;
    };
  }

  var increment = counter();

  String lingkup() {
    var nilaiLokal = "Saya hanya bisa diakses dalam fungsi ini";
    return nilaiLokal;
  }

  print("List Angka:");
  for (var angka in setAngka) {
    print(angka);
  }

  print("Set Angka:");
  for (var angka in setAngka) {
    print('$angka adalah ${cekGanjilGenap(angka)}');
  }

  print("Map Angka:");
  for (var entry in mapAngka.entries) {
    print('${entry.key} : ${entry.value}');
  }

  print("Faktorial dari 5 adalah: ${faktorial(5)}");

  print("Increment pertama: ${increment()}");
  print("Increment kedua: ${increment()}");
  print("Increment ketiga: ${increment()}");

  print("Symbol Unik: $symbolUnik");
  print("Lingkup Fungsi: ${lingkup()}");

  int x = 10;
  int y = 5;
  if (x > y) {
    print("$x lebih besar dari $y");
  } else if (x < y) {
    print("$x lebih kecil dari $y");
  } else {
    print("$x sama dengan $y");
  }

  print("Perulangan menggunakan for:");
  for (int i = 0; i < 5; i++) {
    print("Iterasi ke-$i");
  }

}