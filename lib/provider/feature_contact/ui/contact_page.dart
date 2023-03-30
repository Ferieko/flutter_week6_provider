import 'package:flutter/material.dart';
import 'package:flutter_week6_provider/provider/feature_contact/model/contact_model.dart';
import 'package:flutter_week6_provider/provider/feature_contact/provider/contact.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Widget _listViewContact(Contact contactProvider) {
    if (contactProvider.contactState == ContactState.loading) {
      return const CircularProgressIndicator();
    }  if (contactProvider.contactState == ContactState.error) {
      return const Text("Oops Something Went wrong ..");
    } else {
      return ListView.builder(
          itemCount: contactProvider.contacts.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(contactProvider.contacts[index].name),
              subtitle: Text(contactProvider.contacts[index].noTelp),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta Counter App Demo Provider"),
      ),
      body: Column(
        children: [
          _listViewContact(contactProvider),
        //int i = 0;
          ElevatedButton(
            // int i = 0;
            onPressed: () {

               // i++;
              contactProvider.add(
                ContactModel(
                  name: 'Jono ',
                  noTelp: "0891111",

                ),
              );
            },
            child: const Text("Tambah Data Contact"),
          ),


        ],
      ),
    );
  }
}