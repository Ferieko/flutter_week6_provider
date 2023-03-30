import 'package:flutter/material.dart';
import 'package:flutter_week6_provider/provider/feature_contact/model/contact_model.dart';

enum ContactState { none, loading, success, error }

class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];

  List<ContactModel> get contacts => _contacts;

  /// Initialize State
  ContactState _contactState = ContactState.none;

  ContactState get contactState => _contactState;


  void changeState(ContactState contactState) {
    _contactState = contactState;
    notifyListeners();
  }


  void getContactListDB() {}

  void initData() async {
    changeState(ContactState.loading);
    await Future.delayed(const Duration(seconds: 2));
    _contacts.add(
      ContactModel(
        name: "joni",
        noTelp: "000",
      ),
    );
    changeState(ContactState.success);
    notifyListeners();
  }

  void add(ContactModel contact) async {
    changeState(ContactState.loading);
    await Future.delayed(const Duration(milliseconds: 500));
    _contacts.add(contact);
    changeState(ContactState.success);
    notifyListeners();
  }

  /// TODO
  /// EXAMPLE Contact Form:
  void addContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}