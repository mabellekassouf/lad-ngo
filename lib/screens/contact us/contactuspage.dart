import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/responsive_helper.dart';
import '../widgets/footer.dart';
import '../widgets/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _messageEditingController = TextEditingController();
  String name = '';
  String email = '';
  String message = '';

  String? _validateName(String name) {
    // Regular Expression for fullname (a space between first name and second name)
    String nameRegExp = r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$";

    if (name.isEmpty) {
      // Name field should not be empty
      return 'Enter your name';
    }
    if (!RegExp(nameRegExp).hasMatch(name)) {
      // If the value in name field doesn't match with the regular expression
      // then it throws an error message.
      return 'Give a space between \nyour first name and last name';
    }
    return null;
  }

  String? _validateEmail(String email) {
    // Regular Expression for email
    String emailRegExp =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    if (email.isEmpty) {
      // Name field should not be empty
      return 'Enter your email';
    }
    if (!RegExp(emailRegExp).hasMatch(email)) {
      // If the value in email field doesn't match with the regular expression
      // then it throws an error message.
      return 'Enter correctly.\nexample: username@example.com';
    }
    return null;
  }

  String? _validateMessage(String name) {
    if (name.isEmpty) {
      // Message field should not be empty
      return 'Message is empty. Please fill it.';
    }
    return null;
  }

  void _sendEmail(
      {required String destEmail, required String body, required String name}) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    /// [emailLaunchUri] sends an email to the destination email.
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: destEmail,
      query: encodeQueryParameters(<String, String>{
        'subject': 'Feedback from $name',
        'body': body,
      }),
    );

    launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ResponsiveHelper(
          web: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height*0.8,
                      color: Color(0xffFFD166),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.contactus,
                            style: TextStyle(
                                fontSize: 28,
                            color: Color(0xff073B4C),
                            ),
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      child: Form(
                        key: _formKey,
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              top: 32,
                              bottom: 32,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                 Text(
                                  AppLocalizations.of(context)!.contractform,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff073B4C),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                // Name Field
                                TextFormField(
                                  controller: _nameEditingController,
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.words,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateName(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      name = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      name = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.person_outline),
                                    label:  Text(AppLocalizations.of(context)!.name),
                                    hintText: 'FirstName LastName',
                                    border: const OutlineInputBorder(),
                                  ),
                                ),

                                const SizedBox(
                                  height: 32,
                                ),

                                // Email Field
                                TextFormField(
                                  controller: _emailEditingController,
                                  keyboardType: TextInputType.emailAddress,
                                  textCapitalization: TextCapitalization.none,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateEmail(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      email = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      email = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.alternate_email),
                                    label:  Text(AppLocalizations.of(context)!.email),
                                    hintText: 'E-mail',
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),

                                // Message or Feedback Field
                                TextFormField(
                                  controller: _messageEditingController,
                                  keyboardType: TextInputType.text,
                                  maxLines: 5,
                                  textCapitalization: TextCapitalization.sentences,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateMessage(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      message = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      message = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.message_outlined),
                                    label:  Text(AppLocalizations.of(context)!.message),
                                    hintText: AppLocalizations.of(context)!.message,
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),

                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff118AB2)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )),
                                  ),
                                  child: Text(AppLocalizations.of(context)!.submit),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      setState(() {
                                        _sendEmail(
                                          name: name,
                                          destEmail: "mabellekassouf@hotmail.com",
                                          body: message,
                                        );
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    FooterWidget(),
                  ],
                ),
              ),
              NavigationBarWidget()
            ],
          ),
          mobile: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(height: height*0.15,),
                    Container(
                      height: height*0.4,
                      color: Color(0xffFFD166),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.contactus,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      child: Form(
                        key: _formKey,
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              top: 32,
                              bottom: 32,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.contractform,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff073B4C),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                // Name Field
                                TextFormField(
                                  controller: _nameEditingController,
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.words,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateName(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      name = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      name = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.person_outline),
                                    label:  Text(AppLocalizations.of(context)!.name),
                                    hintText: 'FirstName LastName',
                                    border: const OutlineInputBorder(),
                                  ),
                                ),

                                const SizedBox(
                                  height: 32,
                                ),

                                // Email Field
                                TextFormField(
                                  controller: _emailEditingController,
                                  keyboardType: TextInputType.emailAddress,
                                  textCapitalization: TextCapitalization.none,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateEmail(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      email = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      email = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.alternate_email),
                                    label:  Text(AppLocalizations.of(context)!.email),
                                    hintText: 'E-mail',
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),

                                // Message or Feedback Field
                                TextFormField(
                                  controller: _messageEditingController,
                                  keyboardType: TextInputType.text,
                                  maxLines: 5,
                                  textCapitalization: TextCapitalization.sentences,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) => _validateMessage(value!),
                                  onChanged: (value) {
                                    setState(() {
                                      message = value;
                                    });
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      message = value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    icon: const Icon(Icons.message_outlined),
                                    label:  Text(AppLocalizations.of(context)!.message),
                                    hintText: AppLocalizations.of(context)!.message,
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),

                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff118AB2)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )),
                                  ),
                                  child: Text(AppLocalizations.of(context)!.submit),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      setState(() {
                                        _sendEmail(
                                          name: name,
                                          destEmail: "lad-ngo@outlook.com",
                                          body: message,
                                        );
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    FooterWidget(),
                  ],
                ),
              ),
              NavigationBarWidget()
            ],
          ),
        ),
      ),
      floatingActionButton: ResponsiveHelper(
        web: IconButton(
          iconSize: 65,
          icon: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/phone_icon.png')),
          onPressed: () {},
        ),
        mobile: IconButton(
          iconSize: 50,
          icon: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/phone_icon.png')),
          onPressed: () {},
        ),
      ),
    );
  }
}
