import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dar/components/add_text_field.dart';
import 'package:dar/components/add_text_field_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLocalCard extends StatefulWidget {
  const AddLocalCard({
    Key? key,
  }) : super(key: key);

  @override
  State<AddLocalCard> createState() => _AddLocalCardState();
}

String fullName = '';
String city = '';
String phoneNumber = '';
String email = '';

class _AddLocalCardState extends State<AddLocalCard> {
  final fullNameController = TextEditingController();
  final cityController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Future<void> LocalInfo(
    String fullName,
    String city,
    String phoneNumber,
    String email,
  ) async {
    CollectionReference local = FirebaseFirestore.instance.collection('Locals');
    local.add({
      'fullName': fullNameController.text,
      'city': cityController.text,
      'phoneNumber': phoneNumberController.text,
      'email': emailController.text,
    });
    return;
  }

  @override
  void dispose() {
    fullNameController.dispose();
    cityController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xffACB9AA),
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const AddTextFieldTitle(
                title: 'الاسم الثلاثي',
              ),
              const SizedBox(
                height: 10,
              ),
              AddTextField(
                textFieldController: fullNameController,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextFieldTitle(
                title: 'المدينة',
              ),
              const SizedBox(
                height: 10,
              ),
              AddTextField(
                textFieldController: cityController,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextFieldTitle(
                title: 'رقم الجوال',
              ),
              const SizedBox(
                height: 10,
              ),
              AddTextField(
                textFieldController: phoneNumberController,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextFieldTitle(
                title: 'البريد الالكتروني',
              ),
              const SizedBox(
                height: 10,
              ),
              AddTextField(
                textFieldController: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 360,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                LocalInfo(
                  fullNameController.text,
                  cityController.text,
                  phoneNumberController.text,
                  emailController.text,
                );
              });
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffAA5859),
            ),
            child: Text(
              'اضافة',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
