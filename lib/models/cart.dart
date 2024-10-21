import 'package:flutter/material.dart';
import 'package:project_akhir/models/guns.dart';

class Cart extends ChangeNotifier {
  List<Guns> gunsShop = [
    Guns(
        name: 'AK-47',
        price: '250',
        imagePath: 'images/AK47.jpeg',
        description:
            'Kalashnikov berhasil menyempurnakan desain senapan serbunya setelah kompetisi itu.'),
    Guns(
        name: 'Chainsaw',
        price: '150',
        imagePath: 'images/Chainsaw.jpeg',
        description:
            'alat pemotong yang menggunakan rantai bergerigi tajam yang berputar cepat.'),
    Guns(
        name: 'Handgun',
        price: '120',
        imagePath: 'images/Handgun.jpeg',
        description:
            'Handgun populer di kalangan petugas penegak hukum, militer, dan pengguna sipil untuk keperluan perlindungan diri.'),
    Guns(
        name: 'Uzi',
        price: '200',
        imagePath: 'images/Uzi.jpeg',
        description:
            'sebuah senapan mesin ringan (submachine gun) yang sangat ikonik. '),
  ];

  List<Guns> userCart = [];

  List<Guns> getGunsList() {
    return gunsShop;
  }

  List<Guns> getUserCart() {
    return userCart;
  }

  void addItemToCart(Guns guns) {
    userCart.add(guns);
    notifyListeners();
  }

  void removeItemFromCart(Guns guns) {
    userCart.remove(guns);
    notifyListeners();
  }
}
