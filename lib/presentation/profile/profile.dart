import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/core/colors.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:fresh_n_fresh/presentation/profile/widgets/widgets.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  Profile({Key? key, required this.model}) : super(key: key);
  final UserModel model;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  @override
  void initState() {
    print(widget.model.name);
    _nameController.text = widget.model.name;
    _emailController.text = widget.model.email;
    _numberController.text = widget.model.number;
    _addressController.text =
        (widget.model.address != null) ? widget.model.address! : "";
    super.initState();
  }

  File? image;
  Future getImage() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        image = File(pickedImage!.path);
      });
    } catch (e) {
      setState(() {
        log(e.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: lightblue,
        body: SafeArea(child: BlocBuilder<UserdetailsBloc, UserdetailsState>(
          builder: (context, state) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 22),
                  child: Row(
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                   
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: size.height * 0.7,
                        width: size.width * 0.88,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(children: [
                          SizedBox(
                            height: size.height * 0.15,
                          ),
                          ProfileTextField(hint: 'Name', info: _nameController),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          ProfileTextField(
                              hint: 'Phone Number', info: _numberController),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          ProfileTextField(
                            hint: 'Email',
                            info: _emailController,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          ProfileTextFieldAddress(address: _addressController),
                        ]),
                      ),
                      const Positioned(
                          top: -80,
                          child: CircleAvatar(
                            radius: 75,
                          )),
                      Positioned(
                          top: -75,
                          left: 9,
                          child:(image!=null)? CircleAvatar(
                            radius: 70,
                            backgroundImage: FileImage(image!),
                            backgroundColor: Colors.lightBlue,
                          ): CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(state.model.image!),
                            backgroundColor: Colors.lightBlue,
                          )
                          ),
                      Positioned(
                        bottom: -25,
                        left: 122,
                        child: SizedBox(
                          width: size.width * 0.25,
                          child: ElevatedButton(
                            onPressed: () {
                              final model = UserModel(
                                  email: _emailController.text,
                                  name: _nameController.text,
                                  number: _numberController.text,
                                  disable: false,
                                  date: Timestamp.now(),
                                  id: state.model.id,
                                  address: _addressController.text,
                                 );
                              // context.read<UserdetailsBloc>().add(
                              //     UserdetailsEvent.updateCurrentUser(
                              //         model: model,image: ));
                            },
                            child: const Text(
                              'Save',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 50,
                          right: 20,
                          child: Text(
                            widget.model.name,
                            style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromRGBO(27, 136, 202, 1),
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color:
                                          const Color.fromARGB(255, 5, 51, 89)
                                              .withOpacity(0.2),
                                      offset: const Offset(2, 3),
                                      blurRadius: 7),
                                ]),
                          )),
                      const Positioned(
                          top: -40,
                          right: 70,
                          child: Text(
                            'Hello....!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          )),
                      
                      Positioned(left: 120,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                onPressed: () {
                               getImage();
                                },
                                icon: Icon(Icons.photo)),
                      ))
                    ],
                  ),
                )
              ],
            );
          },
        )));
  }
}
