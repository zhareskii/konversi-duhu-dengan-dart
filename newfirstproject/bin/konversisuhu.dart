import 'dart:io';
import 'package:newfirstproject/konversi_suhu.dart' as konve;

void main() {
do{
  print("1. Celcius");
  print("2. Fahrenheit");
  print("3. Reamur");
  print("4. Kelvin");
  print("Pilih jenis suhu yang akan dikonversi (X untuk keluar):");
  String pilih = stdin.readLineSync()!;

  if (pilih == "1") {
    while (true) {
      try {
        print("Masukkan suhu (Celcius): ");
        double suhu = double.parse(stdin.readLineSync()!);
        print("Fahrenheit: ${konve.celFah(suhu)}");
        print("Reamur: ${konve.celRe(suhu)}");
        print("Kelvin: ${konve.celKel(suhu)}");
        break;
      } catch (e) {
        print("Masukkan suhu yang valid (angka)");
      }
    }
  } else if (pilih == "2") {
    while (true) {
      try {
        print("Masukkan suhu (Fahrenheit): ");
        double suhu = double.parse(stdin.readLineSync()!);
        print("Celcius: ${konve.fahCel(suhu)}");
        print("Reamur: ${konve.fahRe(suhu)}");
        print("Kelvin: ${konve.fahKel(suhu)}");
        break;
      } catch (e) {
        print("Masukkan suhu yang valid (angka)");
      }
    }
  } else if (pilih == "3") {
    while (true) {
      try {
        print("Masukkan suhu (Reamur): ");
        double suhu = double.parse(stdin.readLineSync()!);
        print("Celcius: ${konve.reCel(suhu)}");
        print("Fahrenheit: ${konve.reFah(suhu)}");
        print("Kelvin: ${konve.reKel(suhu)}");
        break;
      } catch (e) {
        print("Masukkan suhu yang valid (angka)");
      }
    }
  } else if (pilih == "4") {
    while (true) {
      try {
        print("Masukkan suhu (Kelvin): ");
        double suhu = double.parse(stdin.readLineSync()!);
        print("Celcius: ${konve.kelCel(suhu)}");
        print("Fahrenheit: ${konve.kelFah(suhu)}");
        print("Reamur: ${konve.kelRe(suhu)}");
        break;
      } catch (e) {
        print("Masukkan suhu yang valid (angka)");
      }
    }
  } else if (pilih == "X" || pilih == "x"){
    print("keluar");
    break;
  }
}while(true);
}