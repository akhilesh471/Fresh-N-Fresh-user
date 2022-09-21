import 'package:flutter/material.dart';

class ProfileTextField extends StatefulWidget {
  const ProfileTextField({
   required this.info,
    required this.hint,
    Key? key,
  }) : super(key: key);
  final String hint;
final TextEditingController info;
  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        // height: size.height * 0.06,
        width: size.width * 0.8,
        child: TextFormField(
          controller: widget.info,
          decoration:  InputDecoration(
            hintText: widget.hint,
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder()),
        ));
  }
}

class ProfileTextFieldAddress extends StatefulWidget {
  const ProfileTextFieldAddress({
    required this.address,
    Key? key,
  }) : super(key: key);
final TextEditingController address;
  @override
  State<ProfileTextFieldAddress> createState() => _ProfileTextFieldAddressState();
}

class _ProfileTextFieldAddressState extends State<ProfileTextFieldAddress> {
 
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.8,
        child: TextFormField(
          controller: widget.address,
          maxLines: 3,
          decoration: const InputDecoration(
            hintText: 'Address',
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder()),
        ));
  }
}
