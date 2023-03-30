import 'package:flutter/material.dart';
import 'package:flutter_week6_provider/provider/feature_contact/provider/contact.dart';
import 'package:flutter_week6_provider/provider/feature_contact/ui/contact_page.dart';
import 'package:provider/provider.dart';

class ContactMain extends StatelessWidget {
  const ContactMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Contact()..initData(),
        ),
      ],
      child: const ContactPage(),
    );
  }
}
